module Stratosphere.EVS.Environment.LicenseInfoProperty (
        LicenseInfoProperty(..), mkLicenseInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LicenseInfoProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-licenseinfo.html>
    LicenseInfoProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-licenseinfo.html#cfn-evs-environment-licenseinfo-solutionkey>
                         solutionKey :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-licenseinfo.html#cfn-evs-environment-licenseinfo-vsankey>
                         vsanKey :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLicenseInfoProperty ::
  Value Prelude.Text -> Value Prelude.Text -> LicenseInfoProperty
mkLicenseInfoProperty solutionKey vsanKey
  = LicenseInfoProperty
      {haddock_workaround_ = (), solutionKey = solutionKey,
       vsanKey = vsanKey}
instance ToResourceProperties LicenseInfoProperty where
  toResourceProperties LicenseInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::EVS::Environment.LicenseInfo",
         supportsTags = Prelude.False,
         properties = ["SolutionKey" JSON..= solutionKey,
                       "VsanKey" JSON..= vsanKey]}
instance JSON.ToJSON LicenseInfoProperty where
  toJSON LicenseInfoProperty {..}
    = JSON.object
        ["SolutionKey" JSON..= solutionKey, "VsanKey" JSON..= vsanKey]
instance Property "SolutionKey" LicenseInfoProperty where
  type PropertyType "SolutionKey" LicenseInfoProperty = Value Prelude.Text
  set newValue LicenseInfoProperty {..}
    = LicenseInfoProperty {solutionKey = newValue, ..}
instance Property "VsanKey" LicenseInfoProperty where
  type PropertyType "VsanKey" LicenseInfoProperty = Value Prelude.Text
  set newValue LicenseInfoProperty {..}
    = LicenseInfoProperty {vsanKey = newValue, ..}