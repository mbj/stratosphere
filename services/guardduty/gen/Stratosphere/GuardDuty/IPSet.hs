module Stratosphere.GuardDuty.IPSet (
        module Exports, IPSet(..), mkIPSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GuardDuty.IPSet.TagItemProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IPSet
  = IPSet {activate :: (Prelude.Maybe (Value Prelude.Bool)),
           detectorId :: (Prelude.Maybe (Value Prelude.Text)),
           format :: (Value Prelude.Text),
           location :: (Value Prelude.Text),
           name :: (Prelude.Maybe (Value Prelude.Text)),
           tags :: (Prelude.Maybe [TagItemProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIPSet :: Value Prelude.Text -> Value Prelude.Text -> IPSet
mkIPSet format location
  = IPSet
      {format = format, location = location, activate = Prelude.Nothing,
       detectorId = Prelude.Nothing, name = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties IPSet where
  toResourceProperties IPSet {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::IPSet", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Format" JSON..= format, "Location" JSON..= location]
                           (Prelude.catMaybes
                              [(JSON..=) "Activate" Prelude.<$> activate,
                               (JSON..=) "DetectorId" Prelude.<$> detectorId,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON IPSet where
  toJSON IPSet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Format" JSON..= format, "Location" JSON..= location]
              (Prelude.catMaybes
                 [(JSON..=) "Activate" Prelude.<$> activate,
                  (JSON..=) "DetectorId" Prelude.<$> detectorId,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Activate" IPSet where
  type PropertyType "Activate" IPSet = Value Prelude.Bool
  set newValue IPSet {..}
    = IPSet {activate = Prelude.pure newValue, ..}
instance Property "DetectorId" IPSet where
  type PropertyType "DetectorId" IPSet = Value Prelude.Text
  set newValue IPSet {..}
    = IPSet {detectorId = Prelude.pure newValue, ..}
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
  type PropertyType "Tags" IPSet = [TagItemProperty]
  set newValue IPSet {..} = IPSet {tags = Prelude.pure newValue, ..}