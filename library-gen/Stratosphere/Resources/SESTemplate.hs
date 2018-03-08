{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-template.html

module Stratosphere.Resources.SESTemplate where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SESTemplateTemplate

-- | Full data type definition for SESTemplate. See 'sesTemplate' for a more
-- convenient constructor.
data SESTemplate =
  SESTemplate
  { _sESTemplateTemplate :: Maybe SESTemplateTemplate
  } deriving (Show, Eq)

instance ToJSON SESTemplate where
  toJSON SESTemplate{..} =
    object $
    catMaybes
    [ fmap (("Template",) . toJSON) _sESTemplateTemplate
    ]

instance FromJSON SESTemplate where
  parseJSON (Object obj) =
    SESTemplate <$>
      (obj .:? "Template")
  parseJSON _ = mempty

-- | Constructor for 'SESTemplate' containing required fields as arguments.
sesTemplate
  :: SESTemplate
sesTemplate  =
  SESTemplate
  { _sESTemplateTemplate = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-template.html#cfn-ses-template-template
sestTemplate :: Lens' SESTemplate (Maybe SESTemplateTemplate)
sestTemplate = lens _sESTemplateTemplate (\s a -> s { _sESTemplateTemplate = a })
