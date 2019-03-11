{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-dimensionconfiguration.html

module Stratosphere.ResourceProperties.SESConfigurationSetEventDestinationDimensionConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- SESConfigurationSetEventDestinationDimensionConfiguration. See
-- 'sesConfigurationSetEventDestinationDimensionConfiguration' for a more
-- convenient constructor.
data SESConfigurationSetEventDestinationDimensionConfiguration =
  SESConfigurationSetEventDestinationDimensionConfiguration
  { _sESConfigurationSetEventDestinationDimensionConfigurationDefaultDimensionValue :: Val Text
  , _sESConfigurationSetEventDestinationDimensionConfigurationDimensionName :: Val Text
  , _sESConfigurationSetEventDestinationDimensionConfigurationDimensionValueSource :: Val Text
  } deriving (Show, Eq)

instance ToJSON SESConfigurationSetEventDestinationDimensionConfiguration where
  toJSON SESConfigurationSetEventDestinationDimensionConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("DefaultDimensionValue",) . toJSON) _sESConfigurationSetEventDestinationDimensionConfigurationDefaultDimensionValue
    , (Just . ("DimensionName",) . toJSON) _sESConfigurationSetEventDestinationDimensionConfigurationDimensionName
    , (Just . ("DimensionValueSource",) . toJSON) _sESConfigurationSetEventDestinationDimensionConfigurationDimensionValueSource
    ]

-- | Constructor for
-- 'SESConfigurationSetEventDestinationDimensionConfiguration' containing
-- required fields as arguments.
sesConfigurationSetEventDestinationDimensionConfiguration
  :: Val Text -- ^ 'sescseddcDefaultDimensionValue'
  -> Val Text -- ^ 'sescseddcDimensionName'
  -> Val Text -- ^ 'sescseddcDimensionValueSource'
  -> SESConfigurationSetEventDestinationDimensionConfiguration
sesConfigurationSetEventDestinationDimensionConfiguration defaultDimensionValuearg dimensionNamearg dimensionValueSourcearg =
  SESConfigurationSetEventDestinationDimensionConfiguration
  { _sESConfigurationSetEventDestinationDimensionConfigurationDefaultDimensionValue = defaultDimensionValuearg
  , _sESConfigurationSetEventDestinationDimensionConfigurationDimensionName = dimensionNamearg
  , _sESConfigurationSetEventDestinationDimensionConfigurationDimensionValueSource = dimensionValueSourcearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-dimensionconfiguration.html#cfn-ses-configurationseteventdestination-dimensionconfiguration-defaultdimensionvalue
sescseddcDefaultDimensionValue :: Lens' SESConfigurationSetEventDestinationDimensionConfiguration (Val Text)
sescseddcDefaultDimensionValue = lens _sESConfigurationSetEventDestinationDimensionConfigurationDefaultDimensionValue (\s a -> s { _sESConfigurationSetEventDestinationDimensionConfigurationDefaultDimensionValue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-dimensionconfiguration.html#cfn-ses-configurationseteventdestination-dimensionconfiguration-dimensionname
sescseddcDimensionName :: Lens' SESConfigurationSetEventDestinationDimensionConfiguration (Val Text)
sescseddcDimensionName = lens _sESConfigurationSetEventDestinationDimensionConfigurationDimensionName (\s a -> s { _sESConfigurationSetEventDestinationDimensionConfigurationDimensionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-dimensionconfiguration.html#cfn-ses-configurationseteventdestination-dimensionconfiguration-dimensionvaluesource
sescseddcDimensionValueSource :: Lens' SESConfigurationSetEventDestinationDimensionConfiguration (Val Text)
sescseddcDimensionValueSource = lens _sESConfigurationSetEventDestinationDimensionConfigurationDimensionValueSource (\s a -> s { _sESConfigurationSetEventDestinationDimensionConfigurationDimensionValueSource = a })
