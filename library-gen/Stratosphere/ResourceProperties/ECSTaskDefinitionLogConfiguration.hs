{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-logconfiguration.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionLogConfiguration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ECSTaskDefinitionLogConfiguration. See
-- 'ecsTaskDefinitionLogConfiguration' for a more convenient constructor.
data ECSTaskDefinitionLogConfiguration =
  ECSTaskDefinitionLogConfiguration
  { _eCSTaskDefinitionLogConfigurationLogDriver :: Val Text
  , _eCSTaskDefinitionLogConfigurationOptions :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionLogConfiguration where
  toJSON ECSTaskDefinitionLogConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("LogDriver",) . toJSON) _eCSTaskDefinitionLogConfigurationLogDriver
    , fmap (("Options",) . toJSON) _eCSTaskDefinitionLogConfigurationOptions
    ]

instance FromJSON ECSTaskDefinitionLogConfiguration where
  parseJSON (Object obj) =
    ECSTaskDefinitionLogConfiguration <$>
      (obj .: "LogDriver") <*>
      (obj .:? "Options")
  parseJSON _ = mempty

-- | Constructor for 'ECSTaskDefinitionLogConfiguration' containing required
-- fields as arguments.
ecsTaskDefinitionLogConfiguration
  :: Val Text -- ^ 'ecstdlcLogDriver'
  -> ECSTaskDefinitionLogConfiguration
ecsTaskDefinitionLogConfiguration logDriverarg =
  ECSTaskDefinitionLogConfiguration
  { _eCSTaskDefinitionLogConfigurationLogDriver = logDriverarg
  , _eCSTaskDefinitionLogConfigurationOptions = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-logconfiguration.html#cfn-ecs-taskdefinition-containerdefinition-logconfiguration-logdriver
ecstdlcLogDriver :: Lens' ECSTaskDefinitionLogConfiguration (Val Text)
ecstdlcLogDriver = lens _eCSTaskDefinitionLogConfigurationLogDriver (\s a -> s { _eCSTaskDefinitionLogConfigurationLogDriver = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-logconfiguration.html#cfn-ecs-taskdefinition-containerdefinition-logconfiguration-options
ecstdlcOptions :: Lens' ECSTaskDefinitionLogConfiguration (Maybe Object)
ecstdlcOptions = lens _eCSTaskDefinitionLogConfigurationOptions (\s a -> s { _eCSTaskDefinitionLogConfigurationOptions = a })
