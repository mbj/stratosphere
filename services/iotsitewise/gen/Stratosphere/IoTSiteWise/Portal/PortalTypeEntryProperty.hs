module Stratosphere.IoTSiteWise.Portal.PortalTypeEntryProperty (
        PortalTypeEntryProperty(..), mkPortalTypeEntryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PortalTypeEntryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-portal-portaltypeentry.html>
    PortalTypeEntryProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-portal-portaltypeentry.html#cfn-iotsitewise-portal-portaltypeentry-portaltools>
                             portalTools :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPortalTypeEntryProperty ::
  ValueList Prelude.Text -> PortalTypeEntryProperty
mkPortalTypeEntryProperty portalTools
  = PortalTypeEntryProperty
      {haddock_workaround_ = (), portalTools = portalTools}
instance ToResourceProperties PortalTypeEntryProperty where
  toResourceProperties PortalTypeEntryProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::Portal.PortalTypeEntry",
         supportsTags = Prelude.False,
         properties = ["PortalTools" JSON..= portalTools]}
instance JSON.ToJSON PortalTypeEntryProperty where
  toJSON PortalTypeEntryProperty {..}
    = JSON.object ["PortalTools" JSON..= portalTools]
instance Property "PortalTools" PortalTypeEntryProperty where
  type PropertyType "PortalTools" PortalTypeEntryProperty = ValueList Prelude.Text
  set newValue PortalTypeEntryProperty {..}
    = PortalTypeEntryProperty {portalTools = newValue, ..}