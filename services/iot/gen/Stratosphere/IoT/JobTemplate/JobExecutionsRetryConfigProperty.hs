module Stratosphere.IoT.JobTemplate.JobExecutionsRetryConfigProperty (
        module Exports, JobExecutionsRetryConfigProperty(..),
        mkJobExecutionsRetryConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.JobTemplate.RetryCriteriaProperty as Exports
import Stratosphere.ResourceProperties
data JobExecutionsRetryConfigProperty
  = JobExecutionsRetryConfigProperty {retryCriteriaList :: (Prelude.Maybe [RetryCriteriaProperty])}
mkJobExecutionsRetryConfigProperty ::
  JobExecutionsRetryConfigProperty
mkJobExecutionsRetryConfigProperty
  = JobExecutionsRetryConfigProperty
      {retryCriteriaList = Prelude.Nothing}
instance ToResourceProperties JobExecutionsRetryConfigProperty where
  toResourceProperties JobExecutionsRetryConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::JobTemplate.JobExecutionsRetryConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RetryCriteriaList" Prelude.<$> retryCriteriaList])}
instance JSON.ToJSON JobExecutionsRetryConfigProperty where
  toJSON JobExecutionsRetryConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RetryCriteriaList" Prelude.<$> retryCriteriaList]))
instance Property "RetryCriteriaList" JobExecutionsRetryConfigProperty where
  type PropertyType "RetryCriteriaList" JobExecutionsRetryConfigProperty = [RetryCriteriaProperty]
  set newValue JobExecutionsRetryConfigProperty {}
    = JobExecutionsRetryConfigProperty
        {retryCriteriaList = Prelude.pure newValue, ..}