{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackfleetassociation.html

module Stratosphere.Resources.AppStreamStackFleetAssociation where

import Stratosphere.ResourceImports


-- | Full data type definition for AppStreamStackFleetAssociation. See
-- 'appStreamStackFleetAssociation' for a more convenient constructor.
data AppStreamStackFleetAssociation =
  AppStreamStackFleetAssociation
  { _appStreamStackFleetAssociationFleetName :: Val Text
  , _appStreamStackFleetAssociationStackName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties AppStreamStackFleetAssociation where
  toResourceProperties AppStreamStackFleetAssociation{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppStream::StackFleetAssociation"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("FleetName",) . toJSON) _appStreamStackFleetAssociationFleetName
        , (Just . ("StackName",) . toJSON) _appStreamStackFleetAssociationStackName
        ]
    }

-- | Constructor for 'AppStreamStackFleetAssociation' containing required
-- fields as arguments.
appStreamStackFleetAssociation
  :: Val Text -- ^ 'assfaFleetName'
  -> Val Text -- ^ 'assfaStackName'
  -> AppStreamStackFleetAssociation
appStreamStackFleetAssociation fleetNamearg stackNamearg =
  AppStreamStackFleetAssociation
  { _appStreamStackFleetAssociationFleetName = fleetNamearg
  , _appStreamStackFleetAssociationStackName = stackNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackfleetassociation.html#cfn-appstream-stackfleetassociation-fleetname
assfaFleetName :: Lens' AppStreamStackFleetAssociation (Val Text)
assfaFleetName = lens _appStreamStackFleetAssociationFleetName (\s a -> s { _appStreamStackFleetAssociationFleetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackfleetassociation.html#cfn-appstream-stackfleetassociation-stackname
assfaStackName :: Lens' AppStreamStackFleetAssociation (Val Text)
assfaStackName = lens _appStreamStackFleetAssociationStackName (\s a -> s { _appStreamStackFleetAssociationStackName = a })
