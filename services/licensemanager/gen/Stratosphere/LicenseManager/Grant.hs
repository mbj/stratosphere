module Stratosphere.LicenseManager.Grant (
        Grant(..), mkGrant
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Grant
  = Grant {allowedOperations :: (Prelude.Maybe (ValueList Prelude.Text)),
           grantName :: (Prelude.Maybe (Value Prelude.Text)),
           homeRegion :: (Prelude.Maybe (Value Prelude.Text)),
           licenseArn :: (Prelude.Maybe (Value Prelude.Text)),
           principals :: (Prelude.Maybe (ValueList Prelude.Text)),
           status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGrant :: Grant
mkGrant
  = Grant
      {allowedOperations = Prelude.Nothing, grantName = Prelude.Nothing,
       homeRegion = Prelude.Nothing, licenseArn = Prelude.Nothing,
       principals = Prelude.Nothing, status = Prelude.Nothing}
instance ToResourceProperties Grant where
  toResourceProperties Grant {..}
    = ResourceProperties
        {awsType = "AWS::LicenseManager::Grant",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllowedOperations" Prelude.<$> allowedOperations,
                            (JSON..=) "GrantName" Prelude.<$> grantName,
                            (JSON..=) "HomeRegion" Prelude.<$> homeRegion,
                            (JSON..=) "LicenseArn" Prelude.<$> licenseArn,
                            (JSON..=) "Principals" Prelude.<$> principals,
                            (JSON..=) "Status" Prelude.<$> status])}
instance JSON.ToJSON Grant where
  toJSON Grant {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllowedOperations" Prelude.<$> allowedOperations,
               (JSON..=) "GrantName" Prelude.<$> grantName,
               (JSON..=) "HomeRegion" Prelude.<$> homeRegion,
               (JSON..=) "LicenseArn" Prelude.<$> licenseArn,
               (JSON..=) "Principals" Prelude.<$> principals,
               (JSON..=) "Status" Prelude.<$> status]))
instance Property "AllowedOperations" Grant where
  type PropertyType "AllowedOperations" Grant = ValueList Prelude.Text
  set newValue Grant {..}
    = Grant {allowedOperations = Prelude.pure newValue, ..}
instance Property "GrantName" Grant where
  type PropertyType "GrantName" Grant = Value Prelude.Text
  set newValue Grant {..}
    = Grant {grantName = Prelude.pure newValue, ..}
instance Property "HomeRegion" Grant where
  type PropertyType "HomeRegion" Grant = Value Prelude.Text
  set newValue Grant {..}
    = Grant {homeRegion = Prelude.pure newValue, ..}
instance Property "LicenseArn" Grant where
  type PropertyType "LicenseArn" Grant = Value Prelude.Text
  set newValue Grant {..}
    = Grant {licenseArn = Prelude.pure newValue, ..}
instance Property "Principals" Grant where
  type PropertyType "Principals" Grant = ValueList Prelude.Text
  set newValue Grant {..}
    = Grant {principals = Prelude.pure newValue, ..}
instance Property "Status" Grant where
  type PropertyType "Status" Grant = Value Prelude.Text
  set newValue Grant {..}
    = Grant {status = Prelude.pure newValue, ..}