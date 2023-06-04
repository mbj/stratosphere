module Stratosphere.LakeFormation.Resource (
        Resource(..), mkResource
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Resource
  = Resource {resourceArn :: (Value Prelude.Text),
              roleArn :: (Prelude.Maybe (Value Prelude.Text)),
              useServiceLinkedRole :: (Value Prelude.Bool),
              withFederation :: (Prelude.Maybe (Value Prelude.Bool))}
mkResource :: Value Prelude.Text -> Value Prelude.Bool -> Resource
mkResource resourceArn useServiceLinkedRole
  = Resource
      {resourceArn = resourceArn,
       useServiceLinkedRole = useServiceLinkedRole,
       roleArn = Prelude.Nothing, withFederation = Prelude.Nothing}
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
                              [(JSON..=) "RoleArn" Prelude.<$> roleArn,
                               (JSON..=) "WithFederation" Prelude.<$> withFederation]))}
instance JSON.ToJSON Resource where
  toJSON Resource {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResourceArn" JSON..= resourceArn,
               "UseServiceLinkedRole" JSON..= useServiceLinkedRole]
              (Prelude.catMaybes
                 [(JSON..=) "RoleArn" Prelude.<$> roleArn,
                  (JSON..=) "WithFederation" Prelude.<$> withFederation])))
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