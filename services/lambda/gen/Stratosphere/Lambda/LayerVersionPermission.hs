module Stratosphere.Lambda.LayerVersionPermission (
        LayerVersionPermission(..), mkLayerVersionPermission
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LayerVersionPermission
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversionpermission.html>
    LayerVersionPermission {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversionpermission.html#cfn-lambda-layerversionpermission-action>
                            action :: (Value Prelude.Text),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversionpermission.html#cfn-lambda-layerversionpermission-layerversionarn>
                            layerVersionArn :: (Value Prelude.Text),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversionpermission.html#cfn-lambda-layerversionpermission-organizationid>
                            organizationId :: (Prelude.Maybe (Value Prelude.Text)),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversionpermission.html#cfn-lambda-layerversionpermission-principal>
                            principal :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
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