module Stratosphere.Route53RecoveryReadiness.RecoveryGroup (
        RecoveryGroup(..), mkRecoveryGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data RecoveryGroup
  = RecoveryGroup {cells :: (Prelude.Maybe (ValueList Prelude.Text)),
                   recoveryGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRecoveryGroup :: RecoveryGroup
mkRecoveryGroup
  = RecoveryGroup
      {cells = Prelude.Nothing, recoveryGroupName = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties RecoveryGroup where
  toResourceProperties RecoveryGroup {..}
    = ResourceProperties
        {awsType = "AWS::Route53RecoveryReadiness::RecoveryGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Cells" Prelude.<$> cells,
                            (JSON..=) "RecoveryGroupName" Prelude.<$> recoveryGroupName,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON RecoveryGroup where
  toJSON RecoveryGroup {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Cells" Prelude.<$> cells,
               (JSON..=) "RecoveryGroupName" Prelude.<$> recoveryGroupName,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Cells" RecoveryGroup where
  type PropertyType "Cells" RecoveryGroup = ValueList Prelude.Text
  set newValue RecoveryGroup {..}
    = RecoveryGroup {cells = Prelude.pure newValue, ..}
instance Property "RecoveryGroupName" RecoveryGroup where
  type PropertyType "RecoveryGroupName" RecoveryGroup = Value Prelude.Text
  set newValue RecoveryGroup {..}
    = RecoveryGroup {recoveryGroupName = Prelude.pure newValue, ..}
instance Property "Tags" RecoveryGroup where
  type PropertyType "Tags" RecoveryGroup = [Tag]
  set newValue RecoveryGroup {..}
    = RecoveryGroup {tags = Prelude.pure newValue, ..}