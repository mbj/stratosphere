{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-rotationschedule.html

module Stratosphere.Resources.SecretsManagerRotationSchedule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SecretsManagerRotationScheduleRotationRules

-- | Full data type definition for SecretsManagerRotationSchedule. See
-- 'secretsManagerRotationSchedule' for a more convenient constructor.
data SecretsManagerRotationSchedule =
  SecretsManagerRotationSchedule
  { _secretsManagerRotationScheduleRotationLambdaARN :: Maybe (Val Text)
  , _secretsManagerRotationScheduleRotationRules :: Maybe SecretsManagerRotationScheduleRotationRules
  , _secretsManagerRotationScheduleSecretId :: Val Text
  } deriving (Show, Eq)

instance ToJSON SecretsManagerRotationSchedule where
  toJSON SecretsManagerRotationSchedule{..} =
    object $
    catMaybes
    [ fmap (("RotationLambdaARN",) . toJSON) _secretsManagerRotationScheduleRotationLambdaARN
    , fmap (("RotationRules",) . toJSON) _secretsManagerRotationScheduleRotationRules
    , (Just . ("SecretId",) . toJSON) _secretsManagerRotationScheduleSecretId
    ]

instance FromJSON SecretsManagerRotationSchedule where
  parseJSON (Object obj) =
    SecretsManagerRotationSchedule <$>
      (obj .:? "RotationLambdaARN") <*>
      (obj .:? "RotationRules") <*>
      (obj .: "SecretId")
  parseJSON _ = mempty

-- | Constructor for 'SecretsManagerRotationSchedule' containing required
-- fields as arguments.
secretsManagerRotationSchedule
  :: Val Text -- ^ 'smrsSecretId'
  -> SecretsManagerRotationSchedule
secretsManagerRotationSchedule secretIdarg =
  SecretsManagerRotationSchedule
  { _secretsManagerRotationScheduleRotationLambdaARN = Nothing
  , _secretsManagerRotationScheduleRotationRules = Nothing
  , _secretsManagerRotationScheduleSecretId = secretIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-rotationschedule.html#cfn-secretsmanager-rotationschedule-rotationlambdaarn
smrsRotationLambdaARN :: Lens' SecretsManagerRotationSchedule (Maybe (Val Text))
smrsRotationLambdaARN = lens _secretsManagerRotationScheduleRotationLambdaARN (\s a -> s { _secretsManagerRotationScheduleRotationLambdaARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-rotationschedule.html#cfn-secretsmanager-rotationschedule-rotationrules
smrsRotationRules :: Lens' SecretsManagerRotationSchedule (Maybe SecretsManagerRotationScheduleRotationRules)
smrsRotationRules = lens _secretsManagerRotationScheduleRotationRules (\s a -> s { _secretsManagerRotationScheduleRotationRules = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-rotationschedule.html#cfn-secretsmanager-rotationschedule-secretid
smrsSecretId :: Lens' SecretsManagerRotationSchedule (Val Text)
smrsSecretId = lens _secretsManagerRotationScheduleSecretId (\s a -> s { _secretsManagerRotationScheduleSecretId = a })
