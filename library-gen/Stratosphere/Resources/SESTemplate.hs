{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
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

instance ToResourceProperties SESTemplate where
  toResourceProperties SESTemplate{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SES::Template"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Template",) . toJSON) _sESTemplateTemplate
        ]
    }

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
