{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html

module Stratosphere.Resources.OpsWorksApp where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.OpsWorksAppSource
import Stratosphere.ResourceProperties.OpsWorksAppDataSource
import Stratosphere.ResourceProperties.OpsWorksAppEnvironmentVariable
import Stratosphere.ResourceProperties.OpsWorksAppSslConfiguration

-- | Full data type definition for OpsWorksApp. See 'opsWorksApp' for a more
-- convenient constructor.
data OpsWorksApp =
  OpsWorksApp
  { _opsWorksAppAppSource :: Maybe OpsWorksAppSource
  , _opsWorksAppAttributes :: Maybe Object
  , _opsWorksAppDataSources :: Maybe [OpsWorksAppDataSource]
  , _opsWorksAppDescription :: Maybe (Val Text)
  , _opsWorksAppDomains :: Maybe (ValList Text)
  , _opsWorksAppEnableSsl :: Maybe (Val Bool)
  , _opsWorksAppEnvironment :: Maybe [OpsWorksAppEnvironmentVariable]
  , _opsWorksAppName :: Val Text
  , _opsWorksAppShortname :: Maybe (Val Text)
  , _opsWorksAppSslConfiguration :: Maybe OpsWorksAppSslConfiguration
  , _opsWorksAppStackId :: Val Text
  , _opsWorksAppType :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties OpsWorksApp where
  toResourceProperties OpsWorksApp{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::OpsWorks::App"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AppSource",) . toJSON) _opsWorksAppAppSource
        , fmap (("Attributes",) . toJSON) _opsWorksAppAttributes
        , fmap (("DataSources",) . toJSON) _opsWorksAppDataSources
        , fmap (("Description",) . toJSON) _opsWorksAppDescription
        , fmap (("Domains",) . toJSON) _opsWorksAppDomains
        , fmap (("EnableSsl",) . toJSON) _opsWorksAppEnableSsl
        , fmap (("Environment",) . toJSON) _opsWorksAppEnvironment
        , (Just . ("Name",) . toJSON) _opsWorksAppName
        , fmap (("Shortname",) . toJSON) _opsWorksAppShortname
        , fmap (("SslConfiguration",) . toJSON) _opsWorksAppSslConfiguration
        , (Just . ("StackId",) . toJSON) _opsWorksAppStackId
        , (Just . ("Type",) . toJSON) _opsWorksAppType
        ]
    }

-- | Constructor for 'OpsWorksApp' containing required fields as arguments.
opsWorksApp
  :: Val Text -- ^ 'owaName'
  -> Val Text -- ^ 'owaStackId'
  -> Val Text -- ^ 'owaType'
  -> OpsWorksApp
opsWorksApp namearg stackIdarg typearg =
  OpsWorksApp
  { _opsWorksAppAppSource = Nothing
  , _opsWorksAppAttributes = Nothing
  , _opsWorksAppDataSources = Nothing
  , _opsWorksAppDescription = Nothing
  , _opsWorksAppDomains = Nothing
  , _opsWorksAppEnableSsl = Nothing
  , _opsWorksAppEnvironment = Nothing
  , _opsWorksAppName = namearg
  , _opsWorksAppShortname = Nothing
  , _opsWorksAppSslConfiguration = Nothing
  , _opsWorksAppStackId = stackIdarg
  , _opsWorksAppType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html#cfn-opsworks-app-appsource
owaAppSource :: Lens' OpsWorksApp (Maybe OpsWorksAppSource)
owaAppSource = lens _opsWorksAppAppSource (\s a -> s { _opsWorksAppAppSource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html#cfn-opsworks-app-attributes
owaAttributes :: Lens' OpsWorksApp (Maybe Object)
owaAttributes = lens _opsWorksAppAttributes (\s a -> s { _opsWorksAppAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html#cfn-opsworks-app-datasources
owaDataSources :: Lens' OpsWorksApp (Maybe [OpsWorksAppDataSource])
owaDataSources = lens _opsWorksAppDataSources (\s a -> s { _opsWorksAppDataSources = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html#cfn-opsworks-app-description
owaDescription :: Lens' OpsWorksApp (Maybe (Val Text))
owaDescription = lens _opsWorksAppDescription (\s a -> s { _opsWorksAppDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html#cfn-opsworks-app-domains
owaDomains :: Lens' OpsWorksApp (Maybe (ValList Text))
owaDomains = lens _opsWorksAppDomains (\s a -> s { _opsWorksAppDomains = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html#cfn-opsworks-app-enablessl
owaEnableSsl :: Lens' OpsWorksApp (Maybe (Val Bool))
owaEnableSsl = lens _opsWorksAppEnableSsl (\s a -> s { _opsWorksAppEnableSsl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html#cfn-opsworks-app-environment
owaEnvironment :: Lens' OpsWorksApp (Maybe [OpsWorksAppEnvironmentVariable])
owaEnvironment = lens _opsWorksAppEnvironment (\s a -> s { _opsWorksAppEnvironment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html#cfn-opsworks-app-name
owaName :: Lens' OpsWorksApp (Val Text)
owaName = lens _opsWorksAppName (\s a -> s { _opsWorksAppName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html#cfn-opsworks-app-shortname
owaShortname :: Lens' OpsWorksApp (Maybe (Val Text))
owaShortname = lens _opsWorksAppShortname (\s a -> s { _opsWorksAppShortname = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html#cfn-opsworks-app-sslconfiguration
owaSslConfiguration :: Lens' OpsWorksApp (Maybe OpsWorksAppSslConfiguration)
owaSslConfiguration = lens _opsWorksAppSslConfiguration (\s a -> s { _opsWorksAppSslConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html#cfn-opsworks-app-stackid
owaStackId :: Lens' OpsWorksApp (Val Text)
owaStackId = lens _opsWorksAppStackId (\s a -> s { _opsWorksAppStackId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html#cfn-opsworks-app-type
owaType :: Lens' OpsWorksApp (Val Text)
owaType = lens _opsWorksAppType (\s a -> s { _opsWorksAppType = a })
