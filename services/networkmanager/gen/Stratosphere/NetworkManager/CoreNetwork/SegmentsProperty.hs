module Stratosphere.NetworkManager.CoreNetwork.SegmentsProperty (
        SegmentsProperty(..), mkSegmentsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SegmentsProperty
  = SegmentsProperty {sendTo :: (Prelude.Maybe (ValueList Prelude.Text)),
                      sendVia :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSegmentsProperty :: SegmentsProperty
mkSegmentsProperty
  = SegmentsProperty
      {sendTo = Prelude.Nothing, sendVia = Prelude.Nothing}
instance ToResourceProperties SegmentsProperty where
  toResourceProperties SegmentsProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::CoreNetwork.Segments",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SendTo" Prelude.<$> sendTo,
                            (JSON..=) "SendVia" Prelude.<$> sendVia])}
instance JSON.ToJSON SegmentsProperty where
  toJSON SegmentsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SendTo" Prelude.<$> sendTo,
               (JSON..=) "SendVia" Prelude.<$> sendVia]))
instance Property "SendTo" SegmentsProperty where
  type PropertyType "SendTo" SegmentsProperty = ValueList Prelude.Text
  set newValue SegmentsProperty {..}
    = SegmentsProperty {sendTo = Prelude.pure newValue, ..}
instance Property "SendVia" SegmentsProperty where
  type PropertyType "SendVia" SegmentsProperty = ValueList Prelude.Text
  set newValue SegmentsProperty {..}
    = SegmentsProperty {sendVia = Prelude.pure newValue, ..}