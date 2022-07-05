{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-configurationseteventdestination.html

module Stratosphere.Resources.SESConfigurationSetEventDestination where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SESConfigurationSetEventDestinationEventDestination

-- | Full data type definition for SESConfigurationSetEventDestination. See
-- 'sesConfigurationSetEventDestination' for a more convenient constructor.
data SESConfigurationSetEventDestination =
  SESConfigurationSetEventDestination
  { _sESConfigurationSetEventDestinationConfigurationSetName :: Val Text
  , _sESConfigurationSetEventDestinationEventDestination :: SESConfigurationSetEventDestinationEventDestination
  } deriving (Show, Eq)

instance ToResourceProperties SESConfigurationSetEventDestination where
  toResourceProperties SESConfigurationSetEventDestination{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SES::ConfigurationSetEventDestination"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ConfigurationSetName",) . toJSON) _sESConfigurationSetEventDestinationConfigurationSetName
        , (Just . ("EventDestination",) . toJSON) _sESConfigurationSetEventDestinationEventDestination
        ]
    }

-- | Constructor for 'SESConfigurationSetEventDestination' containing required
-- fields as arguments.
sesConfigurationSetEventDestination
  :: Val Text -- ^ 'sescsedConfigurationSetName'
  -> SESConfigurationSetEventDestinationEventDestination -- ^ 'sescsedEventDestination'
  -> SESConfigurationSetEventDestination
sesConfigurationSetEventDestination configurationSetNamearg eventDestinationarg =
  SESConfigurationSetEventDestination
  { _sESConfigurationSetEventDestinationConfigurationSetName = configurationSetNamearg
  , _sESConfigurationSetEventDestinationEventDestination = eventDestinationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-configurationseteventdestination.html#cfn-ses-configurationseteventdestination-configurationsetname
sescsedConfigurationSetName :: Lens' SESConfigurationSetEventDestination (Val Text)
sescsedConfigurationSetName = lens _sESConfigurationSetEventDestinationConfigurationSetName (\s a -> s { _sESConfigurationSetEventDestinationConfigurationSetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-configurationseteventdestination.html#cfn-ses-configurationseteventdestination-eventdestination
sescsedEventDestination :: Lens' SESConfigurationSetEventDestination SESConfigurationSetEventDestinationEventDestination
sescsedEventDestination = lens _sESConfigurationSetEventDestinationEventDestination (\s a -> s { _sESConfigurationSetEventDestinationEventDestination = a })
