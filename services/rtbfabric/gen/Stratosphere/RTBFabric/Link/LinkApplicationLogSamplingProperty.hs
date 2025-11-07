module Stratosphere.RTBFabric.Link.LinkApplicationLogSamplingProperty (
        LinkApplicationLogSamplingProperty(..),
        mkLinkApplicationLogSamplingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LinkApplicationLogSamplingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-linkapplicationlogsampling.html>
    LinkApplicationLogSamplingProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-linkapplicationlogsampling.html#cfn-rtbfabric-link-linkapplicationlogsampling-errorlog>
                                        errorLog :: (Value Prelude.Double),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-linkapplicationlogsampling.html#cfn-rtbfabric-link-linkapplicationlogsampling-filterlog>
                                        filterLog :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLinkApplicationLogSamplingProperty ::
  Value Prelude.Double
  -> Value Prelude.Double -> LinkApplicationLogSamplingProperty
mkLinkApplicationLogSamplingProperty errorLog filterLog
  = LinkApplicationLogSamplingProperty
      {haddock_workaround_ = (), errorLog = errorLog,
       filterLog = filterLog}
instance ToResourceProperties LinkApplicationLogSamplingProperty where
  toResourceProperties LinkApplicationLogSamplingProperty {..}
    = ResourceProperties
        {awsType = "AWS::RTBFabric::Link.LinkApplicationLogSampling",
         supportsTags = Prelude.False,
         properties = ["ErrorLog" JSON..= errorLog,
                       "FilterLog" JSON..= filterLog]}
instance JSON.ToJSON LinkApplicationLogSamplingProperty where
  toJSON LinkApplicationLogSamplingProperty {..}
    = JSON.object
        ["ErrorLog" JSON..= errorLog, "FilterLog" JSON..= filterLog]
instance Property "ErrorLog" LinkApplicationLogSamplingProperty where
  type PropertyType "ErrorLog" LinkApplicationLogSamplingProperty = Value Prelude.Double
  set newValue LinkApplicationLogSamplingProperty {..}
    = LinkApplicationLogSamplingProperty {errorLog = newValue, ..}
instance Property "FilterLog" LinkApplicationLogSamplingProperty where
  type PropertyType "FilterLog" LinkApplicationLogSamplingProperty = Value Prelude.Double
  set newValue LinkApplicationLogSamplingProperty {..}
    = LinkApplicationLogSamplingProperty {filterLog = newValue, ..}