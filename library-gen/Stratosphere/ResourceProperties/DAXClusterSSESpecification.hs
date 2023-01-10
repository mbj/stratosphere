
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dax-cluster-ssespecification.html

module Stratosphere.ResourceProperties.DAXClusterSSESpecification where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for DAXClusterSSESpecification. See
-- 'daxClusterSSESpecification' for a more convenient constructor.
data DAXClusterSSESpecification =
  DAXClusterSSESpecification
  { _dAXClusterSSESpecificationSSEEnabled :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON DAXClusterSSESpecification where
  toJSON DAXClusterSSESpecification{..} =
    object $
    catMaybes
    [ fmap (("SSEEnabled",) . toJSON) _dAXClusterSSESpecificationSSEEnabled
    ]

-- | Constructor for 'DAXClusterSSESpecification' containing required fields
-- as arguments.
daxClusterSSESpecification
  :: DAXClusterSSESpecification
daxClusterSSESpecification  =
  DAXClusterSSESpecification
  { _dAXClusterSSESpecificationSSEEnabled = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dax-cluster-ssespecification.html#cfn-dax-cluster-ssespecification-sseenabled
daxcssesSSEEnabled :: Lens' DAXClusterSSESpecification (Maybe (Val Bool))
daxcssesSSEEnabled = lens _dAXClusterSSESpecificationSSEEnabled (\s a -> s { _dAXClusterSSESpecificationSSEEnabled = a })
