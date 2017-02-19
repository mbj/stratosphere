{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html

module Stratosphere.ResourceProperties.Route53HealthCheckHealthCheckConfig where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for Route53HealthCheckHealthCheckConfig. See
-- | 'route53HealthCheckHealthCheckConfig' for a more convenient constructor.
data Route53HealthCheckHealthCheckConfig =
  Route53HealthCheckHealthCheckConfig
  { _route53HealthCheckHealthCheckConfigFailureThreshold :: Maybe (Val Integer')
  , _route53HealthCheckHealthCheckConfigFullyQualifiedDomainName :: Maybe (Val Text)
  , _route53HealthCheckHealthCheckConfigIPAddress :: Maybe (Val Text)
  , _route53HealthCheckHealthCheckConfigPort :: Maybe (Val Integer')
  , _route53HealthCheckHealthCheckConfigRequestInterval :: Maybe (Val Integer')
  , _route53HealthCheckHealthCheckConfigResourcePath :: Maybe (Val Text)
  , _route53HealthCheckHealthCheckConfigSearchString :: Maybe (Val Text)
  , _route53HealthCheckHealthCheckConfigType :: Val Text
  } deriving (Show, Eq)

instance ToJSON Route53HealthCheckHealthCheckConfig where
  toJSON Route53HealthCheckHealthCheckConfig{..} =
    object $
    catMaybes
    [ ("FailureThreshold" .=) <$> _route53HealthCheckHealthCheckConfigFailureThreshold
    , ("FullyQualifiedDomainName" .=) <$> _route53HealthCheckHealthCheckConfigFullyQualifiedDomainName
    , ("IPAddress" .=) <$> _route53HealthCheckHealthCheckConfigIPAddress
    , ("Port" .=) <$> _route53HealthCheckHealthCheckConfigPort
    , ("RequestInterval" .=) <$> _route53HealthCheckHealthCheckConfigRequestInterval
    , ("ResourcePath" .=) <$> _route53HealthCheckHealthCheckConfigResourcePath
    , ("SearchString" .=) <$> _route53HealthCheckHealthCheckConfigSearchString
    , Just ("Type" .= _route53HealthCheckHealthCheckConfigType)
    ]

instance FromJSON Route53HealthCheckHealthCheckConfig where
  parseJSON (Object obj) =
    Route53HealthCheckHealthCheckConfig <$>
      obj .:? "FailureThreshold" <*>
      obj .:? "FullyQualifiedDomainName" <*>
      obj .:? "IPAddress" <*>
      obj .:? "Port" <*>
      obj .:? "RequestInterval" <*>
      obj .:? "ResourcePath" <*>
      obj .:? "SearchString" <*>
      obj .: "Type"
  parseJSON _ = mempty

-- | Constructor for 'Route53HealthCheckHealthCheckConfig' containing required
-- | fields as arguments.
route53HealthCheckHealthCheckConfig
  :: Val Text -- ^ 'rhchccType'
  -> Route53HealthCheckHealthCheckConfig
route53HealthCheckHealthCheckConfig typearg =
  Route53HealthCheckHealthCheckConfig
  { _route53HealthCheckHealthCheckConfigFailureThreshold = Nothing
  , _route53HealthCheckHealthCheckConfigFullyQualifiedDomainName = Nothing
  , _route53HealthCheckHealthCheckConfigIPAddress = Nothing
  , _route53HealthCheckHealthCheckConfigPort = Nothing
  , _route53HealthCheckHealthCheckConfigRequestInterval = Nothing
  , _route53HealthCheckHealthCheckConfigResourcePath = Nothing
  , _route53HealthCheckHealthCheckConfigSearchString = Nothing
  , _route53HealthCheckHealthCheckConfigType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-failurethreshold
rhchccFailureThreshold :: Lens' Route53HealthCheckHealthCheckConfig (Maybe (Val Integer'))
rhchccFailureThreshold = lens _route53HealthCheckHealthCheckConfigFailureThreshold (\s a -> s { _route53HealthCheckHealthCheckConfigFailureThreshold = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-fullyqualifieddomainname
rhchccFullyQualifiedDomainName :: Lens' Route53HealthCheckHealthCheckConfig (Maybe (Val Text))
rhchccFullyQualifiedDomainName = lens _route53HealthCheckHealthCheckConfigFullyQualifiedDomainName (\s a -> s { _route53HealthCheckHealthCheckConfigFullyQualifiedDomainName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-ipaddress
rhchccIPAddress :: Lens' Route53HealthCheckHealthCheckConfig (Maybe (Val Text))
rhchccIPAddress = lens _route53HealthCheckHealthCheckConfigIPAddress (\s a -> s { _route53HealthCheckHealthCheckConfigIPAddress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-port
rhchccPort :: Lens' Route53HealthCheckHealthCheckConfig (Maybe (Val Integer'))
rhchccPort = lens _route53HealthCheckHealthCheckConfigPort (\s a -> s { _route53HealthCheckHealthCheckConfigPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-requestinterval
rhchccRequestInterval :: Lens' Route53HealthCheckHealthCheckConfig (Maybe (Val Integer'))
rhchccRequestInterval = lens _route53HealthCheckHealthCheckConfigRequestInterval (\s a -> s { _route53HealthCheckHealthCheckConfigRequestInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-resourcepath
rhchccResourcePath :: Lens' Route53HealthCheckHealthCheckConfig (Maybe (Val Text))
rhchccResourcePath = lens _route53HealthCheckHealthCheckConfigResourcePath (\s a -> s { _route53HealthCheckHealthCheckConfigResourcePath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-searchstring
rhchccSearchString :: Lens' Route53HealthCheckHealthCheckConfig (Maybe (Val Text))
rhchccSearchString = lens _route53HealthCheckHealthCheckConfigSearchString (\s a -> s { _route53HealthCheckHealthCheckConfigSearchString = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-type
rhchccType :: Lens' Route53HealthCheckHealthCheckConfig (Val Text)
rhchccType = lens _route53HealthCheckHealthCheckConfigType (\s a -> s { _route53HealthCheckHealthCheckConfigType = a })
