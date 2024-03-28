module Stratosphere.RAM.ResourceShare (
        ResourceShare(..), mkResourceShare
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ResourceShare
  = ResourceShare {allowExternalPrincipals :: (Prelude.Maybe (Value Prelude.Bool)),
                   name :: (Value Prelude.Text),
                   permissionArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                   principals :: (Prelude.Maybe (ValueList Prelude.Text)),
                   resourceArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                   sources :: (Prelude.Maybe (ValueList Prelude.Text)),
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceShare :: Value Prelude.Text -> ResourceShare
mkResourceShare name
  = ResourceShare
      {name = name, allowExternalPrincipals = Prelude.Nothing,
       permissionArns = Prelude.Nothing, principals = Prelude.Nothing,
       resourceArns = Prelude.Nothing, sources = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ResourceShare where
  toResourceProperties ResourceShare {..}
    = ResourceProperties
        {awsType = "AWS::RAM::ResourceShare", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowExternalPrincipals"
                                 Prelude.<$> allowExternalPrincipals,
                               (JSON..=) "PermissionArns" Prelude.<$> permissionArns,
                               (JSON..=) "Principals" Prelude.<$> principals,
                               (JSON..=) "ResourceArns" Prelude.<$> resourceArns,
                               (JSON..=) "Sources" Prelude.<$> sources,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ResourceShare where
  toJSON ResourceShare {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "AllowExternalPrincipals"
                    Prelude.<$> allowExternalPrincipals,
                  (JSON..=) "PermissionArns" Prelude.<$> permissionArns,
                  (JSON..=) "Principals" Prelude.<$> principals,
                  (JSON..=) "ResourceArns" Prelude.<$> resourceArns,
                  (JSON..=) "Sources" Prelude.<$> sources,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AllowExternalPrincipals" ResourceShare where
  type PropertyType "AllowExternalPrincipals" ResourceShare = Value Prelude.Bool
  set newValue ResourceShare {..}
    = ResourceShare
        {allowExternalPrincipals = Prelude.pure newValue, ..}
instance Property "Name" ResourceShare where
  type PropertyType "Name" ResourceShare = Value Prelude.Text
  set newValue ResourceShare {..}
    = ResourceShare {name = newValue, ..}
instance Property "PermissionArns" ResourceShare where
  type PropertyType "PermissionArns" ResourceShare = ValueList Prelude.Text
  set newValue ResourceShare {..}
    = ResourceShare {permissionArns = Prelude.pure newValue, ..}
instance Property "Principals" ResourceShare where
  type PropertyType "Principals" ResourceShare = ValueList Prelude.Text
  set newValue ResourceShare {..}
    = ResourceShare {principals = Prelude.pure newValue, ..}
instance Property "ResourceArns" ResourceShare where
  type PropertyType "ResourceArns" ResourceShare = ValueList Prelude.Text
  set newValue ResourceShare {..}
    = ResourceShare {resourceArns = Prelude.pure newValue, ..}
instance Property "Sources" ResourceShare where
  type PropertyType "Sources" ResourceShare = ValueList Prelude.Text
  set newValue ResourceShare {..}
    = ResourceShare {sources = Prelude.pure newValue, ..}
instance Property "Tags" ResourceShare where
  type PropertyType "Tags" ResourceShare = [Tag]
  set newValue ResourceShare {..}
    = ResourceShare {tags = Prelude.pure newValue, ..}