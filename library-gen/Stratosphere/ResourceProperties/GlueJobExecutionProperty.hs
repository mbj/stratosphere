{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-executionproperty.html

module Stratosphere.ResourceProperties.GlueJobExecutionProperty where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for GlueJobExecutionProperty. See
-- 'glueJobExecutionProperty' for a more convenient constructor.
data GlueJobExecutionProperty =
  GlueJobExecutionProperty
  { _glueJobExecutionPropertyMaxConcurrentRuns :: Maybe (Val Double)
  } deriving (Show, Eq)

instance ToJSON GlueJobExecutionProperty where
  toJSON GlueJobExecutionProperty{..} =
    object $
    catMaybes
    [ fmap (("MaxConcurrentRuns",) . toJSON . fmap Double') _glueJobExecutionPropertyMaxConcurrentRuns
    ]

instance FromJSON GlueJobExecutionProperty where
  parseJSON (Object obj) =
    GlueJobExecutionProperty <$>
      fmap (fmap (fmap unDouble')) (obj .:? "MaxConcurrentRuns")
  parseJSON _ = mempty

-- | Constructor for 'GlueJobExecutionProperty' containing required fields as
-- arguments.
glueJobExecutionProperty
  :: GlueJobExecutionProperty
glueJobExecutionProperty  =
  GlueJobExecutionProperty
  { _glueJobExecutionPropertyMaxConcurrentRuns = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-executionproperty.html#cfn-glue-job-executionproperty-maxconcurrentruns
gjepMaxConcurrentRuns :: Lens' GlueJobExecutionProperty (Maybe (Val Double))
gjepMaxConcurrentRuns = lens _glueJobExecutionPropertyMaxConcurrentRuns (\s a -> s { _glueJobExecutionPropertyMaxConcurrentRuns = a })
