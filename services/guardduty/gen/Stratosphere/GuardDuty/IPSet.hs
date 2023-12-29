module Stratosphere.GuardDuty.IPSet (
        IPSet(..), mkIPSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data IPSet
  = IPSet {activate :: (Value Prelude.Bool),
           detectorId :: (Value Prelude.Text),
           format :: (Value Prelude.Text),
           location :: (Value Prelude.Text),
           name :: (Prelude.Maybe (Value Prelude.Text)),
           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIPSet ::
  Value Prelude.Bool
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> IPSet
mkIPSet activate detectorId format location
  = IPSet
      {activate = activate, detectorId = detectorId, format = format,
       location = location, name = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties IPSet where
  toResourceProperties IPSet {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::IPSet", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Activate" JSON..= activate, "DetectorId" JSON..= detectorId,
                            "Format" JSON..= format, "Location" JSON..= location]
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON IPSet where
  toJSON IPSet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Activate" JSON..= activate, "DetectorId" JSON..= detectorId,
               "Format" JSON..= format, "Location" JSON..= location]
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Activate" IPSet where
  type PropertyType "Activate" IPSet = Value Prelude.Bool
  set newValue IPSet {..} = IPSet {activate = newValue, ..}
instance Property "DetectorId" IPSet where
  type PropertyType "DetectorId" IPSet = Value Prelude.Text
  set newValue IPSet {..} = IPSet {detectorId = newValue, ..}
instance Property "Format" IPSet where
  type PropertyType "Format" IPSet = Value Prelude.Text
  set newValue IPSet {..} = IPSet {format = newValue, ..}
instance Property "Location" IPSet where
  type PropertyType "Location" IPSet = Value Prelude.Text
  set newValue IPSet {..} = IPSet {location = newValue, ..}
instance Property "Name" IPSet where
  type PropertyType "Name" IPSet = Value Prelude.Text
  set newValue IPSet {..} = IPSet {name = Prelude.pure newValue, ..}
instance Property "Tags" IPSet where
  type PropertyType "Tags" IPSet = [Tag]
  set newValue IPSet {..} = IPSet {tags = Prelude.pure newValue, ..}