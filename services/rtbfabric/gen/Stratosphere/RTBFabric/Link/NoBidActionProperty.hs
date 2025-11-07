module Stratosphere.RTBFabric.Link.NoBidActionProperty (
        NoBidActionProperty(..), mkNoBidActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NoBidActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-nobidaction.html>
    NoBidActionProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-nobidaction.html#cfn-rtbfabric-link-nobidaction-nobidreasoncode>
                         noBidReasonCode :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNoBidActionProperty :: NoBidActionProperty
mkNoBidActionProperty
  = NoBidActionProperty
      {haddock_workaround_ = (), noBidReasonCode = Prelude.Nothing}
instance ToResourceProperties NoBidActionProperty where
  toResourceProperties NoBidActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::RTBFabric::Link.NoBidAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NoBidReasonCode" Prelude.<$> noBidReasonCode])}
instance JSON.ToJSON NoBidActionProperty where
  toJSON NoBidActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NoBidReasonCode" Prelude.<$> noBidReasonCode]))
instance Property "NoBidReasonCode" NoBidActionProperty where
  type PropertyType "NoBidReasonCode" NoBidActionProperty = Value Prelude.Integer
  set newValue NoBidActionProperty {..}
    = NoBidActionProperty {noBidReasonCode = Prelude.pure newValue, ..}