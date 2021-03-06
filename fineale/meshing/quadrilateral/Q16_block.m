function [fens,fes] =Q16_block(Length,Width,nL,nW,options)
% Mesh of a rectangle of Q16 elements.
% 
% function [fens,fes] =Q16_block(Length,Width,nL,nW,options)
% 
% Examples: 
% [fens,fes] = Q16_block(3.5,1.75,2,3,struct('other_dimension',1))
% drawmesh({fens,fes},'nodes','fes','facecolor','y', 'linewidth',2); hold on
%
% See also: Q4_block, Q4_to_Q16

        [fens,fes] = Q4_block(Length,Width,nL,nW,options);
        [fens,fes] = Q4_to_Q16(fens,fes,options);
    end