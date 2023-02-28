module Stratosphere.Lambda.LayerVersionPermission (
        LayerVersionPermission(..), mkLayerVersionPermission
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LayerVersionPermission
  = LayerVersionPermission {action :: (Value Prelude.Text),
                            layerVersionArn :: (Value Prelude.Text),
                            organizationId :: (Prelude.Maybe (Value Prelude.Text)),
                            principal :: (Value Prelude.Text)}
mkLayerVersionPermission ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> LayerVersionPermission
mkLayerVersionPermission action layerVersionArn principal
  = LayerVersionPermission
      {action = action, layerVersionArn = layerVersionArn,
       principal = principal, organizationId = Prelude.Nothing}
instance ToResourceProperties LayerVersionPermission where
  toResourceProperties LayerVersionPermission {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::LayerVersionPermission",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action,
                            "LayerVersionArn" JSON..= layerVersionArn,
                            "Principal" JSON..= principal]
                           (Prelude.catMaybes
                              [(JSON..=) "OrganizationId" Prelude.<$> organizationId]))}
instance JSON.ToJSON LayerVersionPermission where
  toJSON LayerVersionPermission {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action,
               "LayerVersionArn" JSON..= layerVersionArn,
               "Principal" JSON..= principal]
              (Prelude.catMaybes
                 [(JSON..=) "OrganizationId" Prelude.<$> organizationId])))
instance Property "Action" LayerVersionPermission where
  type PropertyType "Action" LayerVersionPermission = Value Prelude.Text
  set newValue LayerVersionPermission {..}
    = LayerVersionPermission {action = newValue, ..}
instance Property "LayerVersionArn" LayerVersionPermission where
  type PropertyType "LayerVersionArn" LayerVersionPermission = Value Prelude.Text
  set newValue LayerVersionPermission {..}
    = LayerVersionPermission {layerVersionArn = newValue, ..}
instance Property "OrganizationId" LayerVersionPermission where
  type PropertyType "OrganizationId" LayerVersionPermission = Value Prelude.Text
  set newValue LayerVersionPermission {..}
    = LayerVersionPermission
        {organizationId = Prelude.pure newValue, ..}
instance Property "Principal" LayerVersionPermission where
  type PropertyType "Principal" LayerVersionPermission = Value Prelude.Text
  set newValue LayerVersionPermission {..}
    = LayerVersionPermission {principal = newValue, ..}