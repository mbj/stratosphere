{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-microsoftad.html

module Stratosphere.Resources.DirectoryServiceMicrosoftAD where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.DirectoryServiceMicrosoftADVpcSettings

-- | Full data type definition for DirectoryServiceMicrosoftAD. See
-- 'directoryServiceMicrosoftAD' for a more convenient constructor.
data DirectoryServiceMicrosoftAD =
  DirectoryServiceMicrosoftAD
  { _directoryServiceMicrosoftADCreateAlias :: Maybe (Val Bool)
  , _directoryServiceMicrosoftADEdition :: Maybe (Val Text)
  , _directoryServiceMicrosoftADEnableSso :: Maybe (Val Bool)
  , _directoryServiceMicrosoftADName :: Val Text
  , _directoryServiceMicrosoftADPassword :: Val Text
  , _directoryServiceMicrosoftADShortName :: Maybe (Val Text)
  , _directoryServiceMicrosoftADVpcSettings :: DirectoryServiceMicrosoftADVpcSettings
  } deriving (Show, Eq)

instance ToResourceProperties DirectoryServiceMicrosoftAD where
  toResourceProperties DirectoryServiceMicrosoftAD{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::DirectoryService::MicrosoftAD"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("CreateAlias",) . toJSON) _directoryServiceMicrosoftADCreateAlias
        , fmap (("Edition",) . toJSON) _directoryServiceMicrosoftADEdition
        , fmap (("EnableSso",) . toJSON) _directoryServiceMicrosoftADEnableSso
        , (Just . ("Name",) . toJSON) _directoryServiceMicrosoftADName
        , (Just . ("Password",) . toJSON) _directoryServiceMicrosoftADPassword
        , fmap (("ShortName",) . toJSON) _directoryServiceMicrosoftADShortName
        , (Just . ("VpcSettings",) . toJSON) _directoryServiceMicrosoftADVpcSettings
        ]
    }

-- | Constructor for 'DirectoryServiceMicrosoftAD' containing required fields
-- as arguments.
directoryServiceMicrosoftAD
  :: Val Text -- ^ 'dsmadName'
  -> Val Text -- ^ 'dsmadPassword'
  -> DirectoryServiceMicrosoftADVpcSettings -- ^ 'dsmadVpcSettings'
  -> DirectoryServiceMicrosoftAD
directoryServiceMicrosoftAD namearg passwordarg vpcSettingsarg =
  DirectoryServiceMicrosoftAD
  { _directoryServiceMicrosoftADCreateAlias = Nothing
  , _directoryServiceMicrosoftADEdition = Nothing
  , _directoryServiceMicrosoftADEnableSso = Nothing
  , _directoryServiceMicrosoftADName = namearg
  , _directoryServiceMicrosoftADPassword = passwordarg
  , _directoryServiceMicrosoftADShortName = Nothing
  , _directoryServiceMicrosoftADVpcSettings = vpcSettingsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-microsoftad.html#cfn-directoryservice-microsoftad-createalias
dsmadCreateAlias :: Lens' DirectoryServiceMicrosoftAD (Maybe (Val Bool))
dsmadCreateAlias = lens _directoryServiceMicrosoftADCreateAlias (\s a -> s { _directoryServiceMicrosoftADCreateAlias = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-microsoftad.html#cfn-directoryservice-microsoftad-edition
dsmadEdition :: Lens' DirectoryServiceMicrosoftAD (Maybe (Val Text))
dsmadEdition = lens _directoryServiceMicrosoftADEdition (\s a -> s { _directoryServiceMicrosoftADEdition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-microsoftad.html#cfn-directoryservice-microsoftad-enablesso
dsmadEnableSso :: Lens' DirectoryServiceMicrosoftAD (Maybe (Val Bool))
dsmadEnableSso = lens _directoryServiceMicrosoftADEnableSso (\s a -> s { _directoryServiceMicrosoftADEnableSso = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-microsoftad.html#cfn-directoryservice-microsoftad-name
dsmadName :: Lens' DirectoryServiceMicrosoftAD (Val Text)
dsmadName = lens _directoryServiceMicrosoftADName (\s a -> s { _directoryServiceMicrosoftADName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-microsoftad.html#cfn-directoryservice-microsoftad-password
dsmadPassword :: Lens' DirectoryServiceMicrosoftAD (Val Text)
dsmadPassword = lens _directoryServiceMicrosoftADPassword (\s a -> s { _directoryServiceMicrosoftADPassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-microsoftad.html#cfn-directoryservice-microsoftad-shortname
dsmadShortName :: Lens' DirectoryServiceMicrosoftAD (Maybe (Val Text))
dsmadShortName = lens _directoryServiceMicrosoftADShortName (\s a -> s { _directoryServiceMicrosoftADShortName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-microsoftad.html#cfn-directoryservice-microsoftad-vpcsettings
dsmadVpcSettings :: Lens' DirectoryServiceMicrosoftAD DirectoryServiceMicrosoftADVpcSettings
dsmadVpcSettings = lens _directoryServiceMicrosoftADVpcSettings (\s a -> s { _directoryServiceMicrosoftADVpcSettings = a })
