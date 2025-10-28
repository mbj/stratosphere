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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-jobtemplate-jobexecutionsretryconfig.html>
    JobExecutionsRetryConfigProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-jobtemplate-jobexecutionsretryconfig.html#cfn-iot-jobtemplate-jobexecutionsretryconfig-retrycriterialist>
                                      retryCriteriaList :: (Prelude.Maybe [RetryCriteriaProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJobExecutionsRetryConfigProperty ::
  JobExecutionsRetryConfigProperty
mkJobExecutionsRetryConfigProperty
  = JobExecutionsRetryConfigProperty
      {haddock_workaround_ = (), retryCriteriaList = Prelude.Nothing}
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
  set newValue JobExecutionsRetryConfigProperty {..}
    = JobExecutionsRetryConfigProperty
        {retryCriteriaList = Prelude.pure newValue, ..}