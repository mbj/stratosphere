module Stratosphere.RTBFabric.Link.ActionProperty (
        module Exports, ActionProperty(..), mkActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RTBFabric.Link.HeaderTagActionProperty as Exports
import {-# SOURCE #-} Stratosphere.RTBFabric.Link.NoBidActionProperty as Exports
import Stratosphere.ResourceProperties
data ActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-action.html>
    ActionProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-action.html#cfn-rtbfabric-link-action-headertag>
                    headerTag :: (Prelude.Maybe HeaderTagActionProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-action.html#cfn-rtbfabric-link-action-nobid>
                    noBid :: (Prelude.Maybe NoBidActionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionProperty :: ActionProperty
mkActionProperty
  = ActionProperty
      {haddock_workaround_ = (), headerTag = Prelude.Nothing,
       noBid = Prelude.Nothing}
instance ToResourceProperties ActionProperty where
  toResourceProperties ActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::RTBFabric::Link.Action",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HeaderTag" Prelude.<$> headerTag,
                            (JSON..=) "NoBid" Prelude.<$> noBid])}
instance JSON.ToJSON ActionProperty where
  toJSON ActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HeaderTag" Prelude.<$> headerTag,
               (JSON..=) "NoBid" Prelude.<$> noBid]))
instance Property "HeaderTag" ActionProperty where
  type PropertyType "HeaderTag" ActionProperty = HeaderTagActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {headerTag = Prelude.pure newValue, ..}
instance Property "NoBid" ActionProperty where
  type PropertyType "NoBid" ActionProperty = NoBidActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {noBid = Prelude.pure newValue, ..}