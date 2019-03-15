{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html

module Stratosphere.Resources.GlueJob where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GlueJobJobCommand
import Stratosphere.ResourceProperties.GlueJobConnectionsList
import Stratosphere.ResourceProperties.GlueJobExecutionProperty

-- | Full data type definition for GlueJob. See 'glueJob' for a more
-- convenient constructor.
data GlueJob =
  GlueJob
  { _glueJobAllocatedCapacity :: Maybe (Val Double)
  , _glueJobCommand :: GlueJobJobCommand
  , _glueJobConnections :: Maybe GlueJobConnectionsList
  , _glueJobDefaultArguments :: Maybe Object
  , _glueJobDescription :: Maybe (Val Text)
  , _glueJobExecutionProperty :: Maybe GlueJobExecutionProperty
  , _glueJobLogUri :: Maybe (Val Text)
  , _glueJobMaxRetries :: Maybe (Val Double)
  , _glueJobName :: Maybe (Val Text)
  , _glueJobRole :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties GlueJob where
  toResourceProperties GlueJob{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Glue::Job"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("AllocatedCapacity",) . toJSON) _glueJobAllocatedCapacity
        , (Just . ("Command",) . toJSON) _glueJobCommand
        , fmap (("Connections",) . toJSON) _glueJobConnections
        , fmap (("DefaultArguments",) . toJSON) _glueJobDefaultArguments
        , fmap (("Description",) . toJSON) _glueJobDescription
        , fmap (("ExecutionProperty",) . toJSON) _glueJobExecutionProperty
        , fmap (("LogUri",) . toJSON) _glueJobLogUri
        , fmap (("MaxRetries",) . toJSON) _glueJobMaxRetries
        , fmap (("Name",) . toJSON) _glueJobName
        , (Just . ("Role",) . toJSON) _glueJobRole
        ]
    }

-- | Constructor for 'GlueJob' containing required fields as arguments.
glueJob
  :: GlueJobJobCommand -- ^ 'gjCommand'
  -> Val Text -- ^ 'gjRole'
  -> GlueJob
glueJob commandarg rolearg =
  GlueJob
  { _glueJobAllocatedCapacity = Nothing
  , _glueJobCommand = commandarg
  , _glueJobConnections = Nothing
  , _glueJobDefaultArguments = Nothing
  , _glueJobDescription = Nothing
  , _glueJobExecutionProperty = Nothing
  , _glueJobLogUri = Nothing
  , _glueJobMaxRetries = Nothing
  , _glueJobName = Nothing
  , _glueJobRole = rolearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-allocatedcapacity
gjAllocatedCapacity :: Lens' GlueJob (Maybe (Val Double))
gjAllocatedCapacity = lens _glueJobAllocatedCapacity (\s a -> s { _glueJobAllocatedCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-command
gjCommand :: Lens' GlueJob GlueJobJobCommand
gjCommand = lens _glueJobCommand (\s a -> s { _glueJobCommand = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-connections
gjConnections :: Lens' GlueJob (Maybe GlueJobConnectionsList)
gjConnections = lens _glueJobConnections (\s a -> s { _glueJobConnections = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-defaultarguments
gjDefaultArguments :: Lens' GlueJob (Maybe Object)
gjDefaultArguments = lens _glueJobDefaultArguments (\s a -> s { _glueJobDefaultArguments = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-description
gjDescription :: Lens' GlueJob (Maybe (Val Text))
gjDescription = lens _glueJobDescription (\s a -> s { _glueJobDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-executionproperty
gjExecutionProperty :: Lens' GlueJob (Maybe GlueJobExecutionProperty)
gjExecutionProperty = lens _glueJobExecutionProperty (\s a -> s { _glueJobExecutionProperty = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-loguri
gjLogUri :: Lens' GlueJob (Maybe (Val Text))
gjLogUri = lens _glueJobLogUri (\s a -> s { _glueJobLogUri = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-maxretries
gjMaxRetries :: Lens' GlueJob (Maybe (Val Double))
gjMaxRetries = lens _glueJobMaxRetries (\s a -> s { _glueJobMaxRetries = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-name
gjName :: Lens' GlueJob (Maybe (Val Text))
gjName = lens _glueJobName (\s a -> s { _glueJobName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-role
gjRole :: Lens' GlueJob (Val Text)
gjRole = lens _glueJobRole (\s a -> s { _glueJobRole = a })
