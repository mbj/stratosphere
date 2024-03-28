module Stratosphere.WorkSpacesWeb.UserSettings.CookieSynchronizationConfigurationProperty (
        module Exports, CookieSynchronizationConfigurationProperty(..),
        mkCookieSynchronizationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WorkSpacesWeb.UserSettings.CookieSpecificationProperty as Exports
import Stratosphere.ResourceProperties
data CookieSynchronizationConfigurationProperty
  = CookieSynchronizationConfigurationProperty {allowlist :: [CookieSpecificationProperty],
                                                blocklist :: (Prelude.Maybe [CookieSpecificationProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCookieSynchronizationConfigurationProperty ::
  [CookieSpecificationProperty]
  -> CookieSynchronizationConfigurationProperty
mkCookieSynchronizationConfigurationProperty allowlist
  = CookieSynchronizationConfigurationProperty
      {allowlist = allowlist, blocklist = Prelude.Nothing}
instance ToResourceProperties CookieSynchronizationConfigurationProperty where
  toResourceProperties
    CookieSynchronizationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpacesWeb::UserSettings.CookieSynchronizationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Allowlist" JSON..= allowlist]
                           (Prelude.catMaybes [(JSON..=) "Blocklist" Prelude.<$> blocklist]))}
instance JSON.ToJSON CookieSynchronizationConfigurationProperty where
  toJSON CookieSynchronizationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Allowlist" JSON..= allowlist]
              (Prelude.catMaybes [(JSON..=) "Blocklist" Prelude.<$> blocklist])))
instance Property "Allowlist" CookieSynchronizationConfigurationProperty where
  type PropertyType "Allowlist" CookieSynchronizationConfigurationProperty = [CookieSpecificationProperty]
  set newValue CookieSynchronizationConfigurationProperty {..}
    = CookieSynchronizationConfigurationProperty
        {allowlist = newValue, ..}
instance Property "Blocklist" CookieSynchronizationConfigurationProperty where
  type PropertyType "Blocklist" CookieSynchronizationConfigurationProperty = [CookieSpecificationProperty]
  set newValue CookieSynchronizationConfigurationProperty {..}
    = CookieSynchronizationConfigurationProperty
        {blocklist = Prelude.pure newValue, ..}