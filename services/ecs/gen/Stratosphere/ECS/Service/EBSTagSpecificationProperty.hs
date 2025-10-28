module Stratosphere.ECS.Service.EBSTagSpecificationProperty (
        EBSTagSpecificationProperty(..), mkEBSTagSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EBSTagSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-ebstagspecification.html>
    EBSTagSpecificationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-ebstagspecification.html#cfn-ecs-service-ebstagspecification-propagatetags>
                                 propagateTags :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-ebstagspecification.html#cfn-ecs-service-ebstagspecification-resourcetype>
                                 resourceType :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-ebstagspecification.html#cfn-ecs-service-ebstagspecification-tags>
                                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEBSTagSpecificationProperty ::
  Value Prelude.Text -> EBSTagSpecificationProperty
mkEBSTagSpecificationProperty resourceType
  = EBSTagSpecificationProperty
      {haddock_workaround_ = (), resourceType = resourceType,
       propagateTags = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties EBSTagSpecificationProperty where
  toResourceProperties EBSTagSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.EBSTagSpecification",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResourceType" JSON..= resourceType]
                           (Prelude.catMaybes
                              [(JSON..=) "PropagateTags" Prelude.<$> propagateTags,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON EBSTagSpecificationProperty where
  toJSON EBSTagSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResourceType" JSON..= resourceType]
              (Prelude.catMaybes
                 [(JSON..=) "PropagateTags" Prelude.<$> propagateTags,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "PropagateTags" EBSTagSpecificationProperty where
  type PropertyType "PropagateTags" EBSTagSpecificationProperty = Value Prelude.Text
  set newValue EBSTagSpecificationProperty {..}
    = EBSTagSpecificationProperty
        {propagateTags = Prelude.pure newValue, ..}
instance Property "ResourceType" EBSTagSpecificationProperty where
  type PropertyType "ResourceType" EBSTagSpecificationProperty = Value Prelude.Text
  set newValue EBSTagSpecificationProperty {..}
    = EBSTagSpecificationProperty {resourceType = newValue, ..}
instance Property "Tags" EBSTagSpecificationProperty where
  type PropertyType "Tags" EBSTagSpecificationProperty = [Tag]
  set newValue EBSTagSpecificationProperty {..}
    = EBSTagSpecificationProperty {tags = Prelude.pure newValue, ..}