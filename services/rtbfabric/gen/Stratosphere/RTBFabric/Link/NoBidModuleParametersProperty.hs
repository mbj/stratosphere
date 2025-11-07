module Stratosphere.RTBFabric.Link.NoBidModuleParametersProperty (
        NoBidModuleParametersProperty(..), mkNoBidModuleParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NoBidModuleParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-nobidmoduleparameters.html>
    NoBidModuleParametersProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-nobidmoduleparameters.html#cfn-rtbfabric-link-nobidmoduleparameters-passthroughpercentage>
                                   passThroughPercentage :: (Prelude.Maybe (Value Prelude.Double)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-nobidmoduleparameters.html#cfn-rtbfabric-link-nobidmoduleparameters-reason>
                                   reason :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-nobidmoduleparameters.html#cfn-rtbfabric-link-nobidmoduleparameters-reasoncode>
                                   reasonCode :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNoBidModuleParametersProperty :: NoBidModuleParametersProperty
mkNoBidModuleParametersProperty
  = NoBidModuleParametersProperty
      {haddock_workaround_ = (), passThroughPercentage = Prelude.Nothing,
       reason = Prelude.Nothing, reasonCode = Prelude.Nothing}
instance ToResourceProperties NoBidModuleParametersProperty where
  toResourceProperties NoBidModuleParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::RTBFabric::Link.NoBidModuleParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PassThroughPercentage"
                              Prelude.<$> passThroughPercentage,
                            (JSON..=) "Reason" Prelude.<$> reason,
                            (JSON..=) "ReasonCode" Prelude.<$> reasonCode])}
instance JSON.ToJSON NoBidModuleParametersProperty where
  toJSON NoBidModuleParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PassThroughPercentage"
                 Prelude.<$> passThroughPercentage,
               (JSON..=) "Reason" Prelude.<$> reason,
               (JSON..=) "ReasonCode" Prelude.<$> reasonCode]))
instance Property "PassThroughPercentage" NoBidModuleParametersProperty where
  type PropertyType "PassThroughPercentage" NoBidModuleParametersProperty = Value Prelude.Double
  set newValue NoBidModuleParametersProperty {..}
    = NoBidModuleParametersProperty
        {passThroughPercentage = Prelude.pure newValue, ..}
instance Property "Reason" NoBidModuleParametersProperty where
  type PropertyType "Reason" NoBidModuleParametersProperty = Value Prelude.Text
  set newValue NoBidModuleParametersProperty {..}
    = NoBidModuleParametersProperty
        {reason = Prelude.pure newValue, ..}
instance Property "ReasonCode" NoBidModuleParametersProperty where
  type PropertyType "ReasonCode" NoBidModuleParametersProperty = Value Prelude.Integer
  set newValue NoBidModuleParametersProperty {..}
    = NoBidModuleParametersProperty
        {reasonCode = Prelude.pure newValue, ..}