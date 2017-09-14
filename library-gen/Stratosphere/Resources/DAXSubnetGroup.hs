{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-subnetgroup.html

module Stratosphere.Resources.DAXSubnetGroup where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for DAXSubnetGroup. See 'daxSubnetGroup' for a
-- more convenient constructor.
data DAXSubnetGroup =
  DAXSubnetGroup
  { _dAXSubnetGroupDescription :: Maybe (Val Text)
  , _dAXSubnetGroupSubnetGroupName :: Maybe (Val Text)
  , _dAXSubnetGroupSubnetIds :: ValList Text
  } deriving (Show, Eq)

instance ToJSON DAXSubnetGroup where
  toJSON DAXSubnetGroup{..} =
    object $
    catMaybes
    [ fmap (("Description",) . toJSON) _dAXSubnetGroupDescription
    , fmap (("SubnetGroupName",) . toJSON) _dAXSubnetGroupSubnetGroupName
    , (Just . ("SubnetIds",) . toJSON) _dAXSubnetGroupSubnetIds
    ]

instance FromJSON DAXSubnetGroup where
  parseJSON (Object obj) =
    DAXSubnetGroup <$>
      (obj .:? "Description") <*>
      (obj .:? "SubnetGroupName") <*>
      (obj .: "SubnetIds")
  parseJSON _ = mempty

-- | Constructor for 'DAXSubnetGroup' containing required fields as arguments.
daxSubnetGroup
  :: ValList Text -- ^ 'daxsgSubnetIds'
  -> DAXSubnetGroup
daxSubnetGroup subnetIdsarg =
  DAXSubnetGroup
  { _dAXSubnetGroupDescription = Nothing
  , _dAXSubnetGroupSubnetGroupName = Nothing
  , _dAXSubnetGroupSubnetIds = subnetIdsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-subnetgroup.html#cfn-dax-subnetgroup-description
daxsgDescription :: Lens' DAXSubnetGroup (Maybe (Val Text))
daxsgDescription = lens _dAXSubnetGroupDescription (\s a -> s { _dAXSubnetGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-subnetgroup.html#cfn-dax-subnetgroup-subnetgroupname
daxsgSubnetGroupName :: Lens' DAXSubnetGroup (Maybe (Val Text))
daxsgSubnetGroupName = lens _dAXSubnetGroupSubnetGroupName (\s a -> s { _dAXSubnetGroupSubnetGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-subnetgroup.html#cfn-dax-subnetgroup-subnetids
daxsgSubnetIds :: Lens' DAXSubnetGroup (ValList Text)
daxsgSubnetIds = lens _dAXSubnetGroupSubnetIds (\s a -> s { _dAXSubnetGroupSubnetIds = a })
