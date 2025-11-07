module Stratosphere.RTBFabric.Link.ApplicationLogsProperty (
        module Exports, ApplicationLogsProperty(..),
        mkApplicationLogsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RTBFabric.Link.LinkApplicationLogSamplingProperty as Exports
import Stratosphere.ResourceProperties
data ApplicationLogsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-applicationlogs.html>
    ApplicationLogsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-applicationlogs.html#cfn-rtbfabric-link-applicationlogs-linkapplicationlogsampling>
                             linkApplicationLogSampling :: LinkApplicationLogSamplingProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationLogsProperty ::
  LinkApplicationLogSamplingProperty -> ApplicationLogsProperty
mkApplicationLogsProperty linkApplicationLogSampling
  = ApplicationLogsProperty
      {haddock_workaround_ = (),
       linkApplicationLogSampling = linkApplicationLogSampling}
instance ToResourceProperties ApplicationLogsProperty where
  toResourceProperties ApplicationLogsProperty {..}
    = ResourceProperties
        {awsType = "AWS::RTBFabric::Link.ApplicationLogs",
         supportsTags = Prelude.False,
         properties = ["LinkApplicationLogSampling"
                         JSON..= linkApplicationLogSampling]}
instance JSON.ToJSON ApplicationLogsProperty where
  toJSON ApplicationLogsProperty {..}
    = JSON.object
        ["LinkApplicationLogSampling" JSON..= linkApplicationLogSampling]
instance Property "LinkApplicationLogSampling" ApplicationLogsProperty where
  type PropertyType "LinkApplicationLogSampling" ApplicationLogsProperty = LinkApplicationLogSamplingProperty
  set newValue ApplicationLogsProperty {..}
    = ApplicationLogsProperty
        {linkApplicationLogSampling = newValue, ..}