{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html

module Stratosphere.ResourceProperties.CodePipelineCustomActionTypeSettings where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for CodePipelineCustomActionTypeSettings. See
-- | 'codePipelineCustomActionTypeSettings' for a more convenient constructor.
data CodePipelineCustomActionTypeSettings =
  CodePipelineCustomActionTypeSettings
  { _codePipelineCustomActionTypeSettingsEntityUrlTemplate :: Maybe (Val Text)
  , _codePipelineCustomActionTypeSettingsExecutionUrlTemplate :: Maybe (Val Text)
  , _codePipelineCustomActionTypeSettingsRevisionUrlTemplate :: Maybe (Val Text)
  , _codePipelineCustomActionTypeSettingsThirdPartyConfigurationUrl :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON CodePipelineCustomActionTypeSettings where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 37, omitNothingFields = True }

instance FromJSON CodePipelineCustomActionTypeSettings where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 37, omitNothingFields = True }

-- | Constructor for 'CodePipelineCustomActionTypeSettings' containing
-- | required fields as arguments.
codePipelineCustomActionTypeSettings
  :: CodePipelineCustomActionTypeSettings
codePipelineCustomActionTypeSettings  =
  CodePipelineCustomActionTypeSettings
  { _codePipelineCustomActionTypeSettingsEntityUrlTemplate = Nothing
  , _codePipelineCustomActionTypeSettingsExecutionUrlTemplate = Nothing
  , _codePipelineCustomActionTypeSettingsRevisionUrlTemplate = Nothing
  , _codePipelineCustomActionTypeSettingsThirdPartyConfigurationUrl = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html#cfn-codepipeline-customactiontype-settings-entityurltemplate
cpcatsEntityUrlTemplate :: Lens' CodePipelineCustomActionTypeSettings (Maybe (Val Text))
cpcatsEntityUrlTemplate = lens _codePipelineCustomActionTypeSettingsEntityUrlTemplate (\s a -> s { _codePipelineCustomActionTypeSettingsEntityUrlTemplate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html#cfn-codepipeline-customactiontype-settings-executionurltemplate
cpcatsExecutionUrlTemplate :: Lens' CodePipelineCustomActionTypeSettings (Maybe (Val Text))
cpcatsExecutionUrlTemplate = lens _codePipelineCustomActionTypeSettingsExecutionUrlTemplate (\s a -> s { _codePipelineCustomActionTypeSettingsExecutionUrlTemplate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html#cfn-codepipeline-customactiontype-settings-revisionurltemplate
cpcatsRevisionUrlTemplate :: Lens' CodePipelineCustomActionTypeSettings (Maybe (Val Text))
cpcatsRevisionUrlTemplate = lens _codePipelineCustomActionTypeSettingsRevisionUrlTemplate (\s a -> s { _codePipelineCustomActionTypeSettingsRevisionUrlTemplate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html#cfn-codepipeline-customactiontype-settings-thirdpartyconfigurationurl
cpcatsThirdPartyConfigurationUrl :: Lens' CodePipelineCustomActionTypeSettings (Maybe (Val Text))
cpcatsThirdPartyConfigurationUrl = lens _codePipelineCustomActionTypeSettingsThirdPartyConfigurationUrl (\s a -> s { _codePipelineCustomActionTypeSettingsThirdPartyConfigurationUrl = a })
