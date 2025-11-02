module Stratosphere.IoTSiteWise.AccessPolicy.PortalProperty (
        PortalProperty(..), mkPortalProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PortalProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-accesspolicy-portal.html>
    PortalProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-accesspolicy-portal.html#cfn-iotsitewise-accesspolicy-portal-id>
                    id :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPortalProperty :: PortalProperty
mkPortalProperty
  = PortalProperty {haddock_workaround_ = (), id = Prelude.Nothing}
instance ToResourceProperties PortalProperty where
  toResourceProperties PortalProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AccessPolicy.Portal",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "id" Prelude.<$> id])}
instance JSON.ToJSON PortalProperty where
  toJSON PortalProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "id" Prelude.<$> id]))
instance Property "id" PortalProperty where
  type PropertyType "id" PortalProperty = Value Prelude.Text
  set newValue PortalProperty {..}
    = PortalProperty {id = Prelude.pure newValue, ..}