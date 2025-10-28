module Stratosphere.EKS.FargateProfile.SelectorProperty (
        module Exports, SelectorProperty(..), mkSelectorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EKS.FargateProfile.LabelProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SelectorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-fargateprofile-selector.html>
    SelectorProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-fargateprofile-selector.html#cfn-eks-fargateprofile-selector-labels>
                      labels :: (Prelude.Maybe [LabelProperty]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-fargateprofile-selector.html#cfn-eks-fargateprofile-selector-namespace>
                      namespace :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSelectorProperty :: Value Prelude.Text -> SelectorProperty
mkSelectorProperty namespace
  = SelectorProperty
      {haddock_workaround_ = (), namespace = namespace,
       labels = Prelude.Nothing}
instance ToResourceProperties SelectorProperty where
  toResourceProperties SelectorProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::FargateProfile.Selector",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Namespace" JSON..= namespace]
                           (Prelude.catMaybes [(JSON..=) "Labels" Prelude.<$> labels]))}
instance JSON.ToJSON SelectorProperty where
  toJSON SelectorProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Namespace" JSON..= namespace]
              (Prelude.catMaybes [(JSON..=) "Labels" Prelude.<$> labels])))
instance Property "Labels" SelectorProperty where
  type PropertyType "Labels" SelectorProperty = [LabelProperty]
  set newValue SelectorProperty {..}
    = SelectorProperty {labels = Prelude.pure newValue, ..}
instance Property "Namespace" SelectorProperty where
  type PropertyType "Namespace" SelectorProperty = Value Prelude.Text
  set newValue SelectorProperty {..}
    = SelectorProperty {namespace = newValue, ..}