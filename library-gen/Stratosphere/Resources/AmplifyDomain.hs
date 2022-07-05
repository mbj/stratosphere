{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-domain.html

module Stratosphere.Resources.AmplifyDomain where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AmplifyDomainSubDomainSetting

-- | Full data type definition for AmplifyDomain. See 'amplifyDomain' for a
-- more convenient constructor.
data AmplifyDomain =
  AmplifyDomain
  { _amplifyDomainAppId :: Val Text
  , _amplifyDomainAutoSubDomainCreationPatterns :: Maybe (ValList Text)
  , _amplifyDomainAutoSubDomainIAMRole :: Maybe (Val Text)
  , _amplifyDomainDomainName :: Val Text
  , _amplifyDomainEnableAutoSubDomain :: Maybe (Val Bool)
  , _amplifyDomainSubDomainSettings :: [AmplifyDomainSubDomainSetting]
  } deriving (Show, Eq)

instance ToResourceProperties AmplifyDomain where
  toResourceProperties AmplifyDomain{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Amplify::Domain"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("AppId",) . toJSON) _amplifyDomainAppId
        , fmap (("AutoSubDomainCreationPatterns",) . toJSON) _amplifyDomainAutoSubDomainCreationPatterns
        , fmap (("AutoSubDomainIAMRole",) . toJSON) _amplifyDomainAutoSubDomainIAMRole
        , (Just . ("DomainName",) . toJSON) _amplifyDomainDomainName
        , fmap (("EnableAutoSubDomain",) . toJSON) _amplifyDomainEnableAutoSubDomain
        , (Just . ("SubDomainSettings",) . toJSON) _amplifyDomainSubDomainSettings
        ]
    }

-- | Constructor for 'AmplifyDomain' containing required fields as arguments.
amplifyDomain
  :: Val Text -- ^ 'adAppId'
  -> Val Text -- ^ 'adDomainName'
  -> [AmplifyDomainSubDomainSetting] -- ^ 'adSubDomainSettings'
  -> AmplifyDomain
amplifyDomain appIdarg domainNamearg subDomainSettingsarg =
  AmplifyDomain
  { _amplifyDomainAppId = appIdarg
  , _amplifyDomainAutoSubDomainCreationPatterns = Nothing
  , _amplifyDomainAutoSubDomainIAMRole = Nothing
  , _amplifyDomainDomainName = domainNamearg
  , _amplifyDomainEnableAutoSubDomain = Nothing
  , _amplifyDomainSubDomainSettings = subDomainSettingsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-domain.html#cfn-amplify-domain-appid
adAppId :: Lens' AmplifyDomain (Val Text)
adAppId = lens _amplifyDomainAppId (\s a -> s { _amplifyDomainAppId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-domain.html#cfn-amplify-domain-autosubdomaincreationpatterns
adAutoSubDomainCreationPatterns :: Lens' AmplifyDomain (Maybe (ValList Text))
adAutoSubDomainCreationPatterns = lens _amplifyDomainAutoSubDomainCreationPatterns (\s a -> s { _amplifyDomainAutoSubDomainCreationPatterns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-domain.html#cfn-amplify-domain-autosubdomainiamrole
adAutoSubDomainIAMRole :: Lens' AmplifyDomain (Maybe (Val Text))
adAutoSubDomainIAMRole = lens _amplifyDomainAutoSubDomainIAMRole (\s a -> s { _amplifyDomainAutoSubDomainIAMRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-domain.html#cfn-amplify-domain-domainname
adDomainName :: Lens' AmplifyDomain (Val Text)
adDomainName = lens _amplifyDomainDomainName (\s a -> s { _amplifyDomainDomainName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-domain.html#cfn-amplify-domain-enableautosubdomain
adEnableAutoSubDomain :: Lens' AmplifyDomain (Maybe (Val Bool))
adEnableAutoSubDomain = lens _amplifyDomainEnableAutoSubDomain (\s a -> s { _amplifyDomainEnableAutoSubDomain = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-domain.html#cfn-amplify-domain-subdomainsettings
adSubDomainSettings :: Lens' AmplifyDomain [AmplifyDomainSubDomainSetting]
adSubDomainSettings = lens _amplifyDomainSubDomainSettings (\s a -> s { _amplifyDomainSubDomainSettings = a })
