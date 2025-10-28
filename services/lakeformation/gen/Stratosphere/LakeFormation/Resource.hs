module Stratosphere.LakeFormation.Resource (
        Resource(..), mkResource
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Resource
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-resource.html>
    Resource {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-resource.html#cfn-lakeformation-resource-hybridaccessenabled>
              hybridAccessEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-resource.html#cfn-lakeformation-resource-resourcearn>
              resourceArn :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-resource.html#cfn-lakeformation-resource-rolearn>
              roleArn :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-resource.html#cfn-lakeformation-resource-useservicelinkedrole>
              useServiceLinkedRole :: (Value Prelude.Bool),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-resource.html#cfn-lakeformation-resource-withfederation>
              withFederation :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResource :: Value Prelude.Text -> Value Prelude.Bool -> Resource
mkResource resourceArn useServiceLinkedRole
  = Resource
      {haddock_workaround_ = (), resourceArn = resourceArn,
       useServiceLinkedRole = useServiceLinkedRole,
       hybridAccessEnabled = Prelude.Nothing, roleArn = Prelude.Nothing,
       withFederation = Prelude.Nothing}
instance ToResourceProperties Resource where
  toResourceProperties Resource {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::Resource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResourceArn" JSON..= resourceArn,
                            "UseServiceLinkedRole" JSON..= useServiceLinkedRole]
                           (Prelude.catMaybes
                              [(JSON..=) "HybridAccessEnabled" Prelude.<$> hybridAccessEnabled,
                               (JSON..=) "RoleArn" Prelude.<$> roleArn,
                               (JSON..=) "WithFederation" Prelude.<$> withFederation]))}
instance JSON.ToJSON Resource where
  toJSON Resource {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResourceArn" JSON..= resourceArn,
               "UseServiceLinkedRole" JSON..= useServiceLinkedRole]
              (Prelude.catMaybes
                 [(JSON..=) "HybridAccessEnabled" Prelude.<$> hybridAccessEnabled,
                  (JSON..=) "RoleArn" Prelude.<$> roleArn,
                  (JSON..=) "WithFederation" Prelude.<$> withFederation])))
instance Property "HybridAccessEnabled" Resource where
  type PropertyType "HybridAccessEnabled" Resource = Value Prelude.Bool
  set newValue Resource {..}
    = Resource {hybridAccessEnabled = Prelude.pure newValue, ..}
instance Property "ResourceArn" Resource where
  type PropertyType "ResourceArn" Resource = Value Prelude.Text
  set newValue Resource {..} = Resource {resourceArn = newValue, ..}
instance Property "RoleArn" Resource where
  type PropertyType "RoleArn" Resource = Value Prelude.Text
  set newValue Resource {..}
    = Resource {roleArn = Prelude.pure newValue, ..}
instance Property "UseServiceLinkedRole" Resource where
  type PropertyType "UseServiceLinkedRole" Resource = Value Prelude.Bool
  set newValue Resource {..}
    = Resource {useServiceLinkedRole = newValue, ..}
instance Property "WithFederation" Resource where
  type PropertyType "WithFederation" Resource = Value Prelude.Bool
  set newValue Resource {..}
    = Resource {withFederation = Prelude.pure newValue, ..}