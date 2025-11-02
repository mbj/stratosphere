module Stratosphere.Greengrass.FunctionDefinitionVersion.ResourceAccessPolicyProperty (
        ResourceAccessPolicyProperty(..), mkResourceAccessPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceAccessPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-resourceaccesspolicy.html>
    ResourceAccessPolicyProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-resourceaccesspolicy.html#cfn-greengrass-functiondefinitionversion-resourceaccesspolicy-permission>
                                  permission :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-resourceaccesspolicy.html#cfn-greengrass-functiondefinitionversion-resourceaccesspolicy-resourceid>
                                  resourceId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceAccessPolicyProperty ::
  Value Prelude.Text -> ResourceAccessPolicyProperty
mkResourceAccessPolicyProperty resourceId
  = ResourceAccessPolicyProperty
      {haddock_workaround_ = (), resourceId = resourceId,
       permission = Prelude.Nothing}
instance ToResourceProperties ResourceAccessPolicyProperty where
  toResourceProperties ResourceAccessPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::FunctionDefinitionVersion.ResourceAccessPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResourceId" JSON..= resourceId]
                           (Prelude.catMaybes
                              [(JSON..=) "Permission" Prelude.<$> permission]))}
instance JSON.ToJSON ResourceAccessPolicyProperty where
  toJSON ResourceAccessPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResourceId" JSON..= resourceId]
              (Prelude.catMaybes
                 [(JSON..=) "Permission" Prelude.<$> permission])))
instance Property "Permission" ResourceAccessPolicyProperty where
  type PropertyType "Permission" ResourceAccessPolicyProperty = Value Prelude.Text
  set newValue ResourceAccessPolicyProperty {..}
    = ResourceAccessPolicyProperty
        {permission = Prelude.pure newValue, ..}
instance Property "ResourceId" ResourceAccessPolicyProperty where
  type PropertyType "ResourceId" ResourceAccessPolicyProperty = Value Prelude.Text
  set newValue ResourceAccessPolicyProperty {..}
    = ResourceAccessPolicyProperty {resourceId = newValue, ..}