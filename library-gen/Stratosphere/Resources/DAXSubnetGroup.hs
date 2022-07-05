{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-subnetgroup.html

module Stratosphere.Resources.DAXSubnetGroup where

import Stratosphere.ResourceImports


-- | Full data type definition for DAXSubnetGroup. See 'daxSubnetGroup' for a
-- more convenient constructor.
data DAXSubnetGroup =
  DAXSubnetGroup
  { _dAXSubnetGroupDescription :: Maybe (Val Text)
  , _dAXSubnetGroupSubnetGroupName :: Maybe (Val Text)
  , _dAXSubnetGroupSubnetIds :: ValList Text
  } deriving (Show, Eq)

instance ToResourceProperties DAXSubnetGroup where
  toResourceProperties DAXSubnetGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::DAX::SubnetGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _dAXSubnetGroupDescription
        , fmap (("SubnetGroupName",) . toJSON) _dAXSubnetGroupSubnetGroupName
        , (Just . ("SubnetIds",) . toJSON) _dAXSubnetGroupSubnetIds
        ]
    }

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
