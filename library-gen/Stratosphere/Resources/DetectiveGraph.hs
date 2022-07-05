{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-detective-graph.html

module Stratosphere.Resources.DetectiveGraph where

import Stratosphere.ResourceImports


-- | Full data type definition for DetectiveGraph. See 'detectiveGraph' for a
-- more convenient constructor.
data DetectiveGraph =
  DetectiveGraph
  { 
  } deriving (Show, Eq)

instance ToResourceProperties DetectiveGraph where
  toResourceProperties _ =
    ResourceProperties
    { resourcePropertiesType = "AWS::Detective::Graph"
    , resourcePropertiesProperties = keyMapEmpty
    }

-- | Constructor for 'DetectiveGraph' containing required fields as arguments.
detectiveGraph
  :: DetectiveGraph
detectiveGraph  =
  DetectiveGraph
  { 
  }


