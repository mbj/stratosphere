module Stratosphere.Glue.Database.PrincipalPrivilegesProperty (
        module Exports, PrincipalPrivilegesProperty(..),
        mkPrincipalPrivilegesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.Database.DataLakePrincipalProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PrincipalPrivilegesProperty
  = PrincipalPrivilegesProperty {permissions :: (Prelude.Maybe (ValueList Prelude.Text)),
                                 principal :: (Prelude.Maybe DataLakePrincipalProperty)}
mkPrincipalPrivilegesProperty :: PrincipalPrivilegesProperty
mkPrincipalPrivilegesProperty
  = PrincipalPrivilegesProperty
      {permissions = Prelude.Nothing, principal = Prelude.Nothing}
instance ToResourceProperties PrincipalPrivilegesProperty where
  toResourceProperties PrincipalPrivilegesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Database.PrincipalPrivileges",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Permissions" Prelude.<$> permissions,
                            (JSON..=) "Principal" Prelude.<$> principal])}
instance JSON.ToJSON PrincipalPrivilegesProperty where
  toJSON PrincipalPrivilegesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Permissions" Prelude.<$> permissions,
               (JSON..=) "Principal" Prelude.<$> principal]))
instance Property "Permissions" PrincipalPrivilegesProperty where
  type PropertyType "Permissions" PrincipalPrivilegesProperty = ValueList Prelude.Text
  set newValue PrincipalPrivilegesProperty {..}
    = PrincipalPrivilegesProperty
        {permissions = Prelude.pure newValue, ..}
instance Property "Principal" PrincipalPrivilegesProperty where
  type PropertyType "Principal" PrincipalPrivilegesProperty = DataLakePrincipalProperty
  set newValue PrincipalPrivilegesProperty {..}
    = PrincipalPrivilegesProperty
        {principal = Prelude.pure newValue, ..}