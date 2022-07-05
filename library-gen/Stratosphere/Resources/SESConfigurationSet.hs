{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-configurationset.html

module Stratosphere.Resources.SESConfigurationSet where

import Stratosphere.ResourceImports


-- | Full data type definition for SESConfigurationSet. See
-- 'sesConfigurationSet' for a more convenient constructor.
data SESConfigurationSet =
  SESConfigurationSet
  { _sESConfigurationSetName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties SESConfigurationSet where
  toResourceProperties SESConfigurationSet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SES::ConfigurationSet"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Name",) . toJSON) _sESConfigurationSetName
        ]
    }

-- | Constructor for 'SESConfigurationSet' containing required fields as
-- arguments.
sesConfigurationSet
  :: SESConfigurationSet
sesConfigurationSet  =
  SESConfigurationSet
  { _sESConfigurationSetName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-configurationset.html#cfn-ses-configurationset-name
sescsName :: Lens' SESConfigurationSet (Maybe (Val Text))
sescsName = lens _sESConfigurationSetName (\s a -> s { _sESConfigurationSetName = a })
