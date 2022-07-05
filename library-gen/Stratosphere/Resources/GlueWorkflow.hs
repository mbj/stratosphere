{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-workflow.html

module Stratosphere.Resources.GlueWorkflow where

import Stratosphere.ResourceImports


-- | Full data type definition for GlueWorkflow. See 'glueWorkflow' for a more
-- convenient constructor.
data GlueWorkflow =
  GlueWorkflow
  { _glueWorkflowDefaultRunProperties :: Maybe Object
  , _glueWorkflowDescription :: Maybe (Val Text)
  , _glueWorkflowName :: Maybe (Val Text)
  , _glueWorkflowTags :: Maybe Object
  } deriving (Show, Eq)

instance ToResourceProperties GlueWorkflow where
  toResourceProperties GlueWorkflow{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Glue::Workflow"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("DefaultRunProperties",) . toJSON) _glueWorkflowDefaultRunProperties
        , fmap (("Description",) . toJSON) _glueWorkflowDescription
        , fmap (("Name",) . toJSON) _glueWorkflowName
        , fmap (("Tags",) . toJSON) _glueWorkflowTags
        ]
    }

-- | Constructor for 'GlueWorkflow' containing required fields as arguments.
glueWorkflow
  :: GlueWorkflow
glueWorkflow  =
  GlueWorkflow
  { _glueWorkflowDefaultRunProperties = Nothing
  , _glueWorkflowDescription = Nothing
  , _glueWorkflowName = Nothing
  , _glueWorkflowTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-workflow.html#cfn-glue-workflow-defaultrunproperties
gwDefaultRunProperties :: Lens' GlueWorkflow (Maybe Object)
gwDefaultRunProperties = lens _glueWorkflowDefaultRunProperties (\s a -> s { _glueWorkflowDefaultRunProperties = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-workflow.html#cfn-glue-workflow-description
gwDescription :: Lens' GlueWorkflow (Maybe (Val Text))
gwDescription = lens _glueWorkflowDescription (\s a -> s { _glueWorkflowDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-workflow.html#cfn-glue-workflow-name
gwName :: Lens' GlueWorkflow (Maybe (Val Text))
gwName = lens _glueWorkflowName (\s a -> s { _glueWorkflowName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-workflow.html#cfn-glue-workflow-tags
gwTags :: Lens' GlueWorkflow (Maybe Object)
gwTags = lens _glueWorkflowTags (\s a -> s { _glueWorkflowTags = a })
