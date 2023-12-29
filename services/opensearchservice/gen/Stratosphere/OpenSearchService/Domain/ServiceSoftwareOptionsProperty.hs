module Stratosphere.OpenSearchService.Domain.ServiceSoftwareOptionsProperty (
        ServiceSoftwareOptionsProperty(..),
        mkServiceSoftwareOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceSoftwareOptionsProperty
  = ServiceSoftwareOptionsProperty {automatedUpdateDate :: (Prelude.Maybe (Value Prelude.Text)),
                                    cancellable :: (Prelude.Maybe (Value Prelude.Bool)),
                                    currentVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                    description :: (Prelude.Maybe (Value Prelude.Text)),
                                    newVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                    optionalDeployment :: (Prelude.Maybe (Value Prelude.Bool)),
                                    updateAvailable :: (Prelude.Maybe (Value Prelude.Bool)),
                                    updateStatus :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceSoftwareOptionsProperty :: ServiceSoftwareOptionsProperty
mkServiceSoftwareOptionsProperty
  = ServiceSoftwareOptionsProperty
      {automatedUpdateDate = Prelude.Nothing,
       cancellable = Prelude.Nothing, currentVersion = Prelude.Nothing,
       description = Prelude.Nothing, newVersion = Prelude.Nothing,
       optionalDeployment = Prelude.Nothing,
       updateAvailable = Prelude.Nothing, updateStatus = Prelude.Nothing}
instance ToResourceProperties ServiceSoftwareOptionsProperty where
  toResourceProperties ServiceSoftwareOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.ServiceSoftwareOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutomatedUpdateDate" Prelude.<$> automatedUpdateDate,
                            (JSON..=) "Cancellable" Prelude.<$> cancellable,
                            (JSON..=) "CurrentVersion" Prelude.<$> currentVersion,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "NewVersion" Prelude.<$> newVersion,
                            (JSON..=) "OptionalDeployment" Prelude.<$> optionalDeployment,
                            (JSON..=) "UpdateAvailable" Prelude.<$> updateAvailable,
                            (JSON..=) "UpdateStatus" Prelude.<$> updateStatus])}
instance JSON.ToJSON ServiceSoftwareOptionsProperty where
  toJSON ServiceSoftwareOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutomatedUpdateDate" Prelude.<$> automatedUpdateDate,
               (JSON..=) "Cancellable" Prelude.<$> cancellable,
               (JSON..=) "CurrentVersion" Prelude.<$> currentVersion,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "NewVersion" Prelude.<$> newVersion,
               (JSON..=) "OptionalDeployment" Prelude.<$> optionalDeployment,
               (JSON..=) "UpdateAvailable" Prelude.<$> updateAvailable,
               (JSON..=) "UpdateStatus" Prelude.<$> updateStatus]))
instance Property "AutomatedUpdateDate" ServiceSoftwareOptionsProperty where
  type PropertyType "AutomatedUpdateDate" ServiceSoftwareOptionsProperty = Value Prelude.Text
  set newValue ServiceSoftwareOptionsProperty {..}
    = ServiceSoftwareOptionsProperty
        {automatedUpdateDate = Prelude.pure newValue, ..}
instance Property "Cancellable" ServiceSoftwareOptionsProperty where
  type PropertyType "Cancellable" ServiceSoftwareOptionsProperty = Value Prelude.Bool
  set newValue ServiceSoftwareOptionsProperty {..}
    = ServiceSoftwareOptionsProperty
        {cancellable = Prelude.pure newValue, ..}
instance Property "CurrentVersion" ServiceSoftwareOptionsProperty where
  type PropertyType "CurrentVersion" ServiceSoftwareOptionsProperty = Value Prelude.Text
  set newValue ServiceSoftwareOptionsProperty {..}
    = ServiceSoftwareOptionsProperty
        {currentVersion = Prelude.pure newValue, ..}
instance Property "Description" ServiceSoftwareOptionsProperty where
  type PropertyType "Description" ServiceSoftwareOptionsProperty = Value Prelude.Text
  set newValue ServiceSoftwareOptionsProperty {..}
    = ServiceSoftwareOptionsProperty
        {description = Prelude.pure newValue, ..}
instance Property "NewVersion" ServiceSoftwareOptionsProperty where
  type PropertyType "NewVersion" ServiceSoftwareOptionsProperty = Value Prelude.Text
  set newValue ServiceSoftwareOptionsProperty {..}
    = ServiceSoftwareOptionsProperty
        {newVersion = Prelude.pure newValue, ..}
instance Property "OptionalDeployment" ServiceSoftwareOptionsProperty where
  type PropertyType "OptionalDeployment" ServiceSoftwareOptionsProperty = Value Prelude.Bool
  set newValue ServiceSoftwareOptionsProperty {..}
    = ServiceSoftwareOptionsProperty
        {optionalDeployment = Prelude.pure newValue, ..}
instance Property "UpdateAvailable" ServiceSoftwareOptionsProperty where
  type PropertyType "UpdateAvailable" ServiceSoftwareOptionsProperty = Value Prelude.Bool
  set newValue ServiceSoftwareOptionsProperty {..}
    = ServiceSoftwareOptionsProperty
        {updateAvailable = Prelude.pure newValue, ..}
instance Property "UpdateStatus" ServiceSoftwareOptionsProperty where
  type PropertyType "UpdateStatus" ServiceSoftwareOptionsProperty = Value Prelude.Text
  set newValue ServiceSoftwareOptionsProperty {..}
    = ServiceSoftwareOptionsProperty
        {updateStatus = Prelude.pure newValue, ..}