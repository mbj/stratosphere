{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-rotationschedule-hostedrotationlambda.html

module Stratosphere.ResourceProperties.SecretsManagerRotationScheduleHostedRotationLambda where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- SecretsManagerRotationScheduleHostedRotationLambda. See
-- 'secretsManagerRotationScheduleHostedRotationLambda' for a more
-- convenient constructor.
data SecretsManagerRotationScheduleHostedRotationLambda =
  SecretsManagerRotationScheduleHostedRotationLambda
  { _secretsManagerRotationScheduleHostedRotationLambdaKmsKeyArn :: Maybe (Val Text)
  , _secretsManagerRotationScheduleHostedRotationLambdaMasterSecretArn :: Maybe (Val Text)
  , _secretsManagerRotationScheduleHostedRotationLambdaMasterSecretKmsKeyArn :: Maybe (Val Text)
  , _secretsManagerRotationScheduleHostedRotationLambdaRotationLambdaName :: Maybe (Val Text)
  , _secretsManagerRotationScheduleHostedRotationLambdaRotationType :: Val Text
  , _secretsManagerRotationScheduleHostedRotationLambdaVpcSecurityGroupIds :: Maybe (Val Text)
  , _secretsManagerRotationScheduleHostedRotationLambdaVpcSubnetIds :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SecretsManagerRotationScheduleHostedRotationLambda where
  toJSON SecretsManagerRotationScheduleHostedRotationLambda{..} =
    object $
    catMaybes
    [ fmap (("KmsKeyArn",) . toJSON) _secretsManagerRotationScheduleHostedRotationLambdaKmsKeyArn
    , fmap (("MasterSecretArn",) . toJSON) _secretsManagerRotationScheduleHostedRotationLambdaMasterSecretArn
    , fmap (("MasterSecretKmsKeyArn",) . toJSON) _secretsManagerRotationScheduleHostedRotationLambdaMasterSecretKmsKeyArn
    , fmap (("RotationLambdaName",) . toJSON) _secretsManagerRotationScheduleHostedRotationLambdaRotationLambdaName
    , (Just . ("RotationType",) . toJSON) _secretsManagerRotationScheduleHostedRotationLambdaRotationType
    , fmap (("VpcSecurityGroupIds",) . toJSON) _secretsManagerRotationScheduleHostedRotationLambdaVpcSecurityGroupIds
    , fmap (("VpcSubnetIds",) . toJSON) _secretsManagerRotationScheduleHostedRotationLambdaVpcSubnetIds
    ]

-- | Constructor for 'SecretsManagerRotationScheduleHostedRotationLambda'
-- containing required fields as arguments.
secretsManagerRotationScheduleHostedRotationLambda
  :: Val Text -- ^ 'smrshrlRotationType'
  -> SecretsManagerRotationScheduleHostedRotationLambda
secretsManagerRotationScheduleHostedRotationLambda rotationTypearg =
  SecretsManagerRotationScheduleHostedRotationLambda
  { _secretsManagerRotationScheduleHostedRotationLambdaKmsKeyArn = Nothing
  , _secretsManagerRotationScheduleHostedRotationLambdaMasterSecretArn = Nothing
  , _secretsManagerRotationScheduleHostedRotationLambdaMasterSecretKmsKeyArn = Nothing
  , _secretsManagerRotationScheduleHostedRotationLambdaRotationLambdaName = Nothing
  , _secretsManagerRotationScheduleHostedRotationLambdaRotationType = rotationTypearg
  , _secretsManagerRotationScheduleHostedRotationLambdaVpcSecurityGroupIds = Nothing
  , _secretsManagerRotationScheduleHostedRotationLambdaVpcSubnetIds = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-rotationschedule-hostedrotationlambda.html#cfn-secretsmanager-rotationschedule-hostedrotationlambda-kmskeyarn
smrshrlKmsKeyArn :: Lens' SecretsManagerRotationScheduleHostedRotationLambda (Maybe (Val Text))
smrshrlKmsKeyArn = lens _secretsManagerRotationScheduleHostedRotationLambdaKmsKeyArn (\s a -> s { _secretsManagerRotationScheduleHostedRotationLambdaKmsKeyArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-rotationschedule-hostedrotationlambda.html#cfn-secretsmanager-rotationschedule-hostedrotationlambda-mastersecretarn
smrshrlMasterSecretArn :: Lens' SecretsManagerRotationScheduleHostedRotationLambda (Maybe (Val Text))
smrshrlMasterSecretArn = lens _secretsManagerRotationScheduleHostedRotationLambdaMasterSecretArn (\s a -> s { _secretsManagerRotationScheduleHostedRotationLambdaMasterSecretArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-rotationschedule-hostedrotationlambda.html#cfn-secretsmanager-rotationschedule-hostedrotationlambda-mastersecretkmskeyarn
smrshrlMasterSecretKmsKeyArn :: Lens' SecretsManagerRotationScheduleHostedRotationLambda (Maybe (Val Text))
smrshrlMasterSecretKmsKeyArn = lens _secretsManagerRotationScheduleHostedRotationLambdaMasterSecretKmsKeyArn (\s a -> s { _secretsManagerRotationScheduleHostedRotationLambdaMasterSecretKmsKeyArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-rotationschedule-hostedrotationlambda.html#cfn-secretsmanager-rotationschedule-hostedrotationlambda-rotationlambdaname
smrshrlRotationLambdaName :: Lens' SecretsManagerRotationScheduleHostedRotationLambda (Maybe (Val Text))
smrshrlRotationLambdaName = lens _secretsManagerRotationScheduleHostedRotationLambdaRotationLambdaName (\s a -> s { _secretsManagerRotationScheduleHostedRotationLambdaRotationLambdaName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-rotationschedule-hostedrotationlambda.html#cfn-secretsmanager-rotationschedule-hostedrotationlambda-rotationtype
smrshrlRotationType :: Lens' SecretsManagerRotationScheduleHostedRotationLambda (Val Text)
smrshrlRotationType = lens _secretsManagerRotationScheduleHostedRotationLambdaRotationType (\s a -> s { _secretsManagerRotationScheduleHostedRotationLambdaRotationType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-rotationschedule-hostedrotationlambda.html#cfn-secretsmanager-rotationschedule-hostedrotationlambda-vpcsecuritygroupids
smrshrlVpcSecurityGroupIds :: Lens' SecretsManagerRotationScheduleHostedRotationLambda (Maybe (Val Text))
smrshrlVpcSecurityGroupIds = lens _secretsManagerRotationScheduleHostedRotationLambdaVpcSecurityGroupIds (\s a -> s { _secretsManagerRotationScheduleHostedRotationLambdaVpcSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-rotationschedule-hostedrotationlambda.html#cfn-secretsmanager-rotationschedule-hostedrotationlambda-vpcsubnetids
smrshrlVpcSubnetIds :: Lens' SecretsManagerRotationScheduleHostedRotationLambda (Maybe (Val Text))
smrshrlVpcSubnetIds = lens _secretsManagerRotationScheduleHostedRotationLambdaVpcSubnetIds (\s a -> s { _secretsManagerRotationScheduleHostedRotationLambdaVpcSubnetIds = a })
