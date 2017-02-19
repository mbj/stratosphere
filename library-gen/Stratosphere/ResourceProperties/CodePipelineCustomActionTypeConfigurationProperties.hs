{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html

module Stratosphere.ResourceProperties.CodePipelineCustomActionTypeConfigurationProperties where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- | CodePipelineCustomActionTypeConfigurationProperties. See
-- | 'codePipelineCustomActionTypeConfigurationProperties' for a more
-- | convenient constructor.
data CodePipelineCustomActionTypeConfigurationProperties =
  CodePipelineCustomActionTypeConfigurationProperties
  { _codePipelineCustomActionTypeConfigurationPropertiesDescription :: Maybe (Val Text)
  , _codePipelineCustomActionTypeConfigurationPropertiesKey :: Val Bool'
  , _codePipelineCustomActionTypeConfigurationPropertiesName :: Val Text
  , _codePipelineCustomActionTypeConfigurationPropertiesQueryable :: Maybe (Val Bool')
  , _codePipelineCustomActionTypeConfigurationPropertiesRequired :: Val Bool'
  , _codePipelineCustomActionTypeConfigurationPropertiesSecret :: Val Bool'
  , _codePipelineCustomActionTypeConfigurationPropertiesType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CodePipelineCustomActionTypeConfigurationProperties where
  toJSON CodePipelineCustomActionTypeConfigurationProperties{..} =
    object $
    catMaybes
    [ ("Description" .=) <$> _codePipelineCustomActionTypeConfigurationPropertiesDescription
    , Just ("Key" .= _codePipelineCustomActionTypeConfigurationPropertiesKey)
    , Just ("Name" .= _codePipelineCustomActionTypeConfigurationPropertiesName)
    , ("Queryable" .=) <$> _codePipelineCustomActionTypeConfigurationPropertiesQueryable
    , Just ("Required" .= _codePipelineCustomActionTypeConfigurationPropertiesRequired)
    , Just ("Secret" .= _codePipelineCustomActionTypeConfigurationPropertiesSecret)
    , ("Type" .=) <$> _codePipelineCustomActionTypeConfigurationPropertiesType
    ]

instance FromJSON CodePipelineCustomActionTypeConfigurationProperties where
  parseJSON (Object obj) =
    CodePipelineCustomActionTypeConfigurationProperties <$>
      obj .:? "Description" <*>
      obj .: "Key" <*>
      obj .: "Name" <*>
      obj .:? "Queryable" <*>
      obj .: "Required" <*>
      obj .: "Secret" <*>
      obj .:? "Type"
  parseJSON _ = mempty

-- | Constructor for 'CodePipelineCustomActionTypeConfigurationProperties'
-- | containing required fields as arguments.
codePipelineCustomActionTypeConfigurationProperties
  :: Val Bool' -- ^ 'cpcatcpKey'
  -> Val Text -- ^ 'cpcatcpName'
  -> Val Bool' -- ^ 'cpcatcpRequired'
  -> Val Bool' -- ^ 'cpcatcpSecret'
  -> CodePipelineCustomActionTypeConfigurationProperties
codePipelineCustomActionTypeConfigurationProperties keyarg namearg requiredarg secretarg =
  CodePipelineCustomActionTypeConfigurationProperties
  { _codePipelineCustomActionTypeConfigurationPropertiesDescription = Nothing
  , _codePipelineCustomActionTypeConfigurationPropertiesKey = keyarg
  , _codePipelineCustomActionTypeConfigurationPropertiesName = namearg
  , _codePipelineCustomActionTypeConfigurationPropertiesQueryable = Nothing
  , _codePipelineCustomActionTypeConfigurationPropertiesRequired = requiredarg
  , _codePipelineCustomActionTypeConfigurationPropertiesSecret = secretarg
  , _codePipelineCustomActionTypeConfigurationPropertiesType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-description
cpcatcpDescription :: Lens' CodePipelineCustomActionTypeConfigurationProperties (Maybe (Val Text))
cpcatcpDescription = lens _codePipelineCustomActionTypeConfigurationPropertiesDescription (\s a -> s { _codePipelineCustomActionTypeConfigurationPropertiesDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-key
cpcatcpKey :: Lens' CodePipelineCustomActionTypeConfigurationProperties (Val Bool')
cpcatcpKey = lens _codePipelineCustomActionTypeConfigurationPropertiesKey (\s a -> s { _codePipelineCustomActionTypeConfigurationPropertiesKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-name
cpcatcpName :: Lens' CodePipelineCustomActionTypeConfigurationProperties (Val Text)
cpcatcpName = lens _codePipelineCustomActionTypeConfigurationPropertiesName (\s a -> s { _codePipelineCustomActionTypeConfigurationPropertiesName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-queryable
cpcatcpQueryable :: Lens' CodePipelineCustomActionTypeConfigurationProperties (Maybe (Val Bool'))
cpcatcpQueryable = lens _codePipelineCustomActionTypeConfigurationPropertiesQueryable (\s a -> s { _codePipelineCustomActionTypeConfigurationPropertiesQueryable = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-required
cpcatcpRequired :: Lens' CodePipelineCustomActionTypeConfigurationProperties (Val Bool')
cpcatcpRequired = lens _codePipelineCustomActionTypeConfigurationPropertiesRequired (\s a -> s { _codePipelineCustomActionTypeConfigurationPropertiesRequired = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-secret
cpcatcpSecret :: Lens' CodePipelineCustomActionTypeConfigurationProperties (Val Bool')
cpcatcpSecret = lens _codePipelineCustomActionTypeConfigurationPropertiesSecret (\s a -> s { _codePipelineCustomActionTypeConfigurationPropertiesSecret = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-type
cpcatcpType :: Lens' CodePipelineCustomActionTypeConfigurationProperties (Maybe (Val Text))
cpcatcpType = lens _codePipelineCustomActionTypeConfigurationPropertiesType (\s a -> s { _codePipelineCustomActionTypeConfigurationPropertiesType = a })
