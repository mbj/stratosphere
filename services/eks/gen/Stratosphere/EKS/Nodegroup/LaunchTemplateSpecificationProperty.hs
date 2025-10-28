module Stratosphere.EKS.Nodegroup.LaunchTemplateSpecificationProperty (
        LaunchTemplateSpecificationProperty(..),
        mkLaunchTemplateSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LaunchTemplateSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-launchtemplatespecification.html>
    LaunchTemplateSpecificationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-launchtemplatespecification.html#cfn-eks-nodegroup-launchtemplatespecification-id>
                                         id :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-launchtemplatespecification.html#cfn-eks-nodegroup-launchtemplatespecification-name>
                                         name :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-launchtemplatespecification.html#cfn-eks-nodegroup-launchtemplatespecification-version>
                                         version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLaunchTemplateSpecificationProperty ::
  LaunchTemplateSpecificationProperty
mkLaunchTemplateSpecificationProperty
  = LaunchTemplateSpecificationProperty
      {haddock_workaround_ = (), id = Prelude.Nothing,
       name = Prelude.Nothing, version = Prelude.Nothing}
instance ToResourceProperties LaunchTemplateSpecificationProperty where
  toResourceProperties LaunchTemplateSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Nodegroup.LaunchTemplateSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Id" Prelude.<$> id, (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON LaunchTemplateSpecificationProperty where
  toJSON LaunchTemplateSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Id" Prelude.<$> id, (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Version" Prelude.<$> version]))
instance Property "Id" LaunchTemplateSpecificationProperty where
  type PropertyType "Id" LaunchTemplateSpecificationProperty = Value Prelude.Text
  set newValue LaunchTemplateSpecificationProperty {..}
    = LaunchTemplateSpecificationProperty
        {id = Prelude.pure newValue, ..}
instance Property "Name" LaunchTemplateSpecificationProperty where
  type PropertyType "Name" LaunchTemplateSpecificationProperty = Value Prelude.Text
  set newValue LaunchTemplateSpecificationProperty {..}
    = LaunchTemplateSpecificationProperty
        {name = Prelude.pure newValue, ..}
instance Property "Version" LaunchTemplateSpecificationProperty where
  type PropertyType "Version" LaunchTemplateSpecificationProperty = Value Prelude.Text
  set newValue LaunchTemplateSpecificationProperty {..}
    = LaunchTemplateSpecificationProperty
        {version = Prelude.pure newValue, ..}