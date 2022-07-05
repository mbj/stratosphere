{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-rotationschedule.html

module Stratosphere.Resources.SecretsManagerRotationSchedule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SecretsManagerRotationScheduleHostedRotationLambda
import Stratosphere.ResourceProperties.SecretsManagerRotationScheduleRotationRules

-- | Full data type definition for SecretsManagerRotationSchedule. See
-- 'secretsManagerRotationSchedule' for a more convenient constructor.
data SecretsManagerRotationSchedule =
  SecretsManagerRotationSchedule
  { _secretsManagerRotationScheduleHostedRotationLambda :: Maybe SecretsManagerRotationScheduleHostedRotationLambda
  , _secretsManagerRotationScheduleRotationLambdaARN :: Maybe (Val Text)
  , _secretsManagerRotationScheduleRotationRules :: Maybe SecretsManagerRotationScheduleRotationRules
  , _secretsManagerRotationScheduleSecretId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties SecretsManagerRotationSchedule where
  toResourceProperties SecretsManagerRotationSchedule{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SecretsManager::RotationSchedule"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("HostedRotationLambda",) . toJSON) _secretsManagerRotationScheduleHostedRotationLambda
        , fmap (("RotationLambdaARN",) . toJSON) _secretsManagerRotationScheduleRotationLambdaARN
        , fmap (("RotationRules",) . toJSON) _secretsManagerRotationScheduleRotationRules
        , (Just . ("SecretId",) . toJSON) _secretsManagerRotationScheduleSecretId
        ]
    }

-- | Constructor for 'SecretsManagerRotationSchedule' containing required
-- fields as arguments.
secretsManagerRotationSchedule
  :: Val Text -- ^ 'smrsSecretId'
  -> SecretsManagerRotationSchedule
secretsManagerRotationSchedule secretIdarg =
  SecretsManagerRotationSchedule
  { _secretsManagerRotationScheduleHostedRotationLambda = Nothing
  , _secretsManagerRotationScheduleRotationLambdaARN = Nothing
  , _secretsManagerRotationScheduleRotationRules = Nothing
  , _secretsManagerRotationScheduleSecretId = secretIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-rotationschedule.html#cfn-secretsmanager-rotationschedule-hostedrotationlambda
smrsHostedRotationLambda :: Lens' SecretsManagerRotationSchedule (Maybe SecretsManagerRotationScheduleHostedRotationLambda)
smrsHostedRotationLambda = lens _secretsManagerRotationScheduleHostedRotationLambda (\s a -> s { _secretsManagerRotationScheduleHostedRotationLambda = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-rotationschedule.html#cfn-secretsmanager-rotationschedule-rotationlambdaarn
smrsRotationLambdaARN :: Lens' SecretsManagerRotationSchedule (Maybe (Val Text))
smrsRotationLambdaARN = lens _secretsManagerRotationScheduleRotationLambdaARN (\s a -> s { _secretsManagerRotationScheduleRotationLambdaARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-rotationschedule.html#cfn-secretsmanager-rotationschedule-rotationrules
smrsRotationRules :: Lens' SecretsManagerRotationSchedule (Maybe SecretsManagerRotationScheduleRotationRules)
smrsRotationRules = lens _secretsManagerRotationScheduleRotationRules (\s a -> s { _secretsManagerRotationScheduleRotationRules = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-rotationschedule.html#cfn-secretsmanager-rotationschedule-secretid
smrsSecretId :: Lens' SecretsManagerRotationSchedule (Val Text)
smrsSecretId = lens _secretsManagerRotationScheduleSecretId (\s a -> s { _secretsManagerRotationScheduleSecretId = a })
