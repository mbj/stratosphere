{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverqueryloggingconfig.html

module Stratosphere.Resources.Route53ResolverResolverQueryLoggingConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for Route53ResolverResolverQueryLoggingConfig.
-- See 'route53ResolverResolverQueryLoggingConfig' for a more convenient
-- constructor.
data Route53ResolverResolverQueryLoggingConfig =
  Route53ResolverResolverQueryLoggingConfig
  { _route53ResolverResolverQueryLoggingConfigDestinationArn :: Maybe (Val Text)
  , _route53ResolverResolverQueryLoggingConfigName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties Route53ResolverResolverQueryLoggingConfig where
  toResourceProperties Route53ResolverResolverQueryLoggingConfig{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Route53Resolver::ResolverQueryLoggingConfig"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("DestinationArn",) . toJSON) _route53ResolverResolverQueryLoggingConfigDestinationArn
        , fmap (("Name",) . toJSON) _route53ResolverResolverQueryLoggingConfigName
        ]
    }

-- | Constructor for 'Route53ResolverResolverQueryLoggingConfig' containing
-- required fields as arguments.
route53ResolverResolverQueryLoggingConfig
  :: Route53ResolverResolverQueryLoggingConfig
route53ResolverResolverQueryLoggingConfig  =
  Route53ResolverResolverQueryLoggingConfig
  { _route53ResolverResolverQueryLoggingConfigDestinationArn = Nothing
  , _route53ResolverResolverQueryLoggingConfigName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverqueryloggingconfig.html#cfn-route53resolver-resolverqueryloggingconfig-destinationarn
rrrqlcDestinationArn :: Lens' Route53ResolverResolverQueryLoggingConfig (Maybe (Val Text))
rrrqlcDestinationArn = lens _route53ResolverResolverQueryLoggingConfigDestinationArn (\s a -> s { _route53ResolverResolverQueryLoggingConfigDestinationArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverqueryloggingconfig.html#cfn-route53resolver-resolverqueryloggingconfig-name
rrrqlcName :: Lens' Route53ResolverResolverQueryLoggingConfig (Maybe (Val Text))
rrrqlcName = lens _route53ResolverResolverQueryLoggingConfigName (\s a -> s { _route53ResolverResolverQueryLoggingConfigName = a })
