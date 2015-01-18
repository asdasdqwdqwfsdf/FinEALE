list={'pub_axial_wave_expl_1D',...		
'pub_sin_rod_expl_1D',...		
'pub_sin_rod_expl_2D_axi',...		
'pub_sin_rod_impl_1D',...		
'pub_sin_rod_impl_2D_axi',...		
'pub_sin_rod_impl_3D',...		
'pub_test5_vibration',...		
'pub_FV12NAFEMS_vibration',...		
'pub_FV52NAFEMS_vibration',...		
'pub_KS_sandwich_vibration_ss',...		
'pub_test5_free',...		
'pub_single_bar',...		
'pub_Floyd',...		
'pub_thick_pipe_axi',...		
'pub_thick_pipe_ps',...		
'pub_LE10NAFEMS',...		
'pub_LE10NAFEMS_H20',...		
'pub_LE10NAFEMS_H64',...		
'pub_LE10NAFEMS_T10',...		
'pub_R0031NAFEMS',...		
'pub_R0031NAFEMS_1_region',...		
'pub_Twisted_beam',...		
'pub_plane_w_hole_m',...		
'pub_thick_pipe',...		
'pub_BMTTA_S_No15i_NAFEMS',...		
'pub_T4NAFEMS_conv',...		
'pub_T4NAFEMS_conv_graded',...		
'pub_heated_brick',...		
'pub_heated_brick_alt',...		
'pub_heated_brick_quadratic',...		
'pub_heated_brick_tet',...		
'pub_T3NAFEMS',...		
'pub_T3NAFEMS_axi',...		
'pub_LE11NAFEMS_Q8',...		
'pub_cooling_stress_shock',...		
'pub_LE11NAFEMS_H20'};
for i=1:length(list)
     f=which( list{i});;
      [pathstr, name, ext]=fileparts(f);
      try
          cd(pathstr);
          publish(list{i});;
          disp(list{i});
      catch
          disp(['Failed for ' list{i}]);
      end
end 