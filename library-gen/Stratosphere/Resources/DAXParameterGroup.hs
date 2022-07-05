{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-parametergroup.html

module Stratosphere.Resources.DAXParameterGroup where

import Stratosphere.ResourceImports


-- | Full data type definition for DAXParameterGroup. See 'daxParameterGroup'
-- for a more convenient constructor.
data DAXParameterGroup =
  DAXParameterGroup
  { _dAXParameterGroupDescription :: Maybe (Val Text)
  , _dAXParameterGroupParameterGroupName :: Maybe (Val Text)
  , _dAXParameterGroupParameterNameValues :: Maybe Object
  } deriving (Show, Eq)

instance ToResourceProperties DAXParameterGroup where
  toResourceProperties DAXParameterGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::DAX::ParameterGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _dAXParameterGroupDescription
        , fmap (("ParameterGroupName",) . toJSON) _dAXParameterGroupParameterGroupName
        , fmap (("ParameterNameValues",) . toJSON) _dAXParameterGroupParameterNameValues
        ]
    }

-- | Constructor for 'DAXParameterGroup' containing required fields as
-- arguments.
daxParameterGroup
  :: DAXParameterGroup
daxParameterGroup  =
  DAXParameterGroup
  { _dAXParameterGroupDescription = Nothing
  , _dAXParameterGroupParameterGroupName = Nothing
  , _dAXParameterGroupParameterNameValues = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-parametergroup.html#cfn-dax-parametergroup-description
daxpgDescription :: Lens' DAXParameterGroup (Maybe (Val Text))
daxpgDescription = lens _dAXParameterGroupDescription (\s a -> s { _dAXParameterGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-parametergroup.html#cfn-dax-parametergroup-parametergroupname
daxpgParameterGroupName :: Lens' DAXParameterGroup (Maybe (Val Text))
daxpgParameterGroupName = lens _dAXParameterGroupParameterGroupName (\s a -> s { _dAXParameterGroupParameterGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-parametergroup.html#cfn-dax-parametergroup-parameternamevalues
daxpgParameterNameValues :: Lens' DAXParameterGroup (Maybe Object)
daxpgParameterNameValues = lens _dAXParameterGroupParameterNameValues (\s a -> s { _dAXParameterGroupParameterNameValues = a })
