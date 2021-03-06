function [K, R, t] = decompose(P)
    %Takes a camera matrix P and returns the Inner parameter matrix K, the
    %rotation matrix R and translation vector t
    KR = P(:,1:3);
    Kt = P(:,4);
    [R, K] = qr(KR);
    t = K\Kt;
end