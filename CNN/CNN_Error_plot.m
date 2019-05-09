%     This program is for plotting CNN validation error
%     Copyright (C) May 1 2019,  Jiaying Gao, Northwestern University
% 
%     This program is free software: you can redistribute it and/or modify
%     it under the terms of the GNU General Public License as published by
%     the Free Software Foundation, either version 3 of the License, or
%     (at your option) any later version.
% 
%     This program is distributed in the hope that it will be useful,
%     but WITHOUT ANY WARRANTY; without even the implied warranty of
%     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%     GNU General Public License for more details.
% 
%     You should have received a copy of the GNU General Public License
%     along with this program.  If not, see <https://www.gnu.org/licenses/>.

%% erorr plot_CNN
load('CNN_results.mat')

eps_sup_SCA_M=eps_sup_SCA_M_validation;

% l2 norm 
Diff=eps_sup_CNN_M-eps_sup_SCA_M;

l1=sum(abs(Diff),2);
l2=sum((Diff).^2,2);
hist(l2,40);
set(gca,'FontSize',16);
xlabel(['Difference in ',char(8467),'^{2} norm'],'fontsize',16); ylabel('Number of Samples','fontsize',16);
ax = gca;
ax.FontSize = 16;

%% prediction vs. SCA
fs=16;

figure; 
subplot(1,3,1);
plot(eps_sup_CNN_M(:,1),eps_sup_SCA_M(:,1),'r*');hold on
plot(eps_sup_SCA_M(:,1),eps_sup_SCA_M(:,1),'k')
cor=corrcoef(eps_sup_CNN_M(:,1),eps_sup_SCA_M(:,1));
str=sprintf('r= %1.4f',cor(1,2));
T = text(max(get(gca, 'xlim'))*0.2, max(get(gca, 'ylim'))*0.8, str); 
set(T, 'fontsize', 16, 'verticalalignment', 'top', 'horizontalalignment', 'left');
legend([char(949),'_{xx,CNN}^{M} vs.',char(949),'_{xx, SCA}^{M}'],[char(949),'_{xx,SCA}^{M} vs.',char(949),'_{xx, SCA}^{M}'],'Location','southeast')
%xlim([0 12]);ylim([0 12])
set(gca,'FontSize',fs);
xlabel([char(949),'_{xx,CNN}^{M}'],'fontsize',16); ylabel([char(949),'_{xx,SCA}^{M}'],'fontsize',16);
xlim([0 0.05]);ylim([0 0.05])
ax = gca;ax.FontSize = 16;

subplot(1,3,2);
plot(eps_sup_CNN_M(:,2),eps_sup_SCA_M(:,2),'blue*');hold on
plot(eps_sup_SCA_M(:,2),eps_sup_SCA_M(:,2),'k')
cor=corrcoef(eps_sup_CNN_M(:,2),eps_sup_SCA_M(:,2));
str=sprintf('r= %1.4f',cor(1,2));
T = text(max(get(gca, 'xlim'))*0.2, max(get(gca, 'ylim'))*0.8, str); 
set(T, 'fontsize', 16, 'verticalalignment', 'top', 'horizontalalignment', 'left');
%xlim([0 12]);ylim([0 12])
legend([char(949),'_{yy,CNN}^{M} vs.',char(949),'_{yy, SCA}^{M}'],[char(949),'_{yy,SCA}^{M} vs.',char(949),'_{yy, SCA}^{M}'],'Location','southeast')
set(gca,'FontSize',fs);
xlabel([char(949),'_{yy,CNN}^{M}'],'fontsize',16); ylabel([char(949),'_{yy,SCA}^{M}'],'fontsize',16);
xlim([0 0.05]);ylim([0 0.05])
ax = gca;ax.FontSize = 16;

subplot(1,3,3);
plot(eps_sup_CNN_M(:,3),eps_sup_SCA_M(:,3),'g*');hold on
plot(eps_sup_SCA_M(:,3),eps_sup_SCA_M(:,3),'k')
cor=corrcoef(eps_sup_CNN_M(:,3),eps_sup_SCA_M(:,3));
str=sprintf('r= %1.4f',cor(1,2));
T = text(max(get(gca, 'xlim'))*0.2, max(get(gca, 'ylim'))*0.8, str); 
set(T, 'fontsize', 16, 'verticalalignment', 'top', 'horizontalalignment', 'left');
%xlim([0 2.5]);ylim([0 2.5])
legend([char(947),'_{xy,CNN}^{M} vs.',char(947),'_{xy, SCA}^{M}'],[char(947),'_{xy,SCA}^{M} vs.',char(947),'_{xy, SCA}^{M}'],'Location','southeast')
set(gca,'FontSize',fs);
xlabel([char(947),'_{xy,CNN}^{M}'],'fontsize',16); ylabel([char(947),'_{xy,SCA}^{M}'],'fontsize',16);
xlim([0 0.05]);ylim([0 0.05])
ax = gca;ax.FontSize = 16;
