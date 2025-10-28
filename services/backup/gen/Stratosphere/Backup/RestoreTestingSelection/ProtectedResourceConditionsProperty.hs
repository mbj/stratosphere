module Stratosphere.Backup.RestoreTestingSelection.ProtectedResourceConditionsProperty (
        module Exports, ProtectedResourceConditionsProperty(..),
        mkProtectedResourceConditionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Backup.RestoreTestingSelection.KeyValueProperty as Exports
import Stratosphere.ResourceProperties
data ProtectedResourceConditionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-restoretestingselection-protectedresourceconditions.html>
    ProtectedResourceConditionsProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-restoretestingselection-protectedresourceconditions.html#cfn-backup-restoretestingselection-protectedresourceconditions-stringequals>
                                         stringEquals :: (Prelude.Maybe [KeyValueProperty]),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-restoretestingselection-protectedresourceconditions.html#cfn-backup-restoretestingselection-protectedresourceconditions-stringnotequals>
                                         stringNotEquals :: (Prelude.Maybe [KeyValueProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProtectedResourceConditionsProperty ::
  ProtectedResourceConditionsProperty
mkProtectedResourceConditionsProperty
  = ProtectedResourceConditionsProperty
      {haddock_workaround_ = (), stringEquals = Prelude.Nothing,
       stringNotEquals = Prelude.Nothing}
instance ToResourceProperties ProtectedResourceConditionsProperty where
  toResourceProperties ProtectedResourceConditionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::RestoreTestingSelection.ProtectedResourceConditions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "StringEquals" Prelude.<$> stringEquals,
                            (JSON..=) "StringNotEquals" Prelude.<$> stringNotEquals])}
instance JSON.ToJSON ProtectedResourceConditionsProperty where
  toJSON ProtectedResourceConditionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "StringEquals" Prelude.<$> stringEquals,
               (JSON..=) "StringNotEquals" Prelude.<$> stringNotEquals]))
instance Property "StringEquals" ProtectedResourceConditionsProperty where
  type PropertyType "StringEquals" ProtectedResourceConditionsProperty = [KeyValueProperty]
  set newValue ProtectedResourceConditionsProperty {..}
    = ProtectedResourceConditionsProperty
        {stringEquals = Prelude.pure newValue, ..}
instance Property "StringNotEquals" ProtectedResourceConditionsProperty where
  type PropertyType "StringNotEquals" ProtectedResourceConditionsProperty = [KeyValueProperty]
  set newValue ProtectedResourceConditionsProperty {..}
    = ProtectedResourceConditionsProperty
        {stringNotEquals = Prelude.pure newValue, ..}