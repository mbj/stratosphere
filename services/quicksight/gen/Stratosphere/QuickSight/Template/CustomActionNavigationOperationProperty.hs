module Stratosphere.QuickSight.Template.CustomActionNavigationOperationProperty (
        module Exports, CustomActionNavigationOperationProperty(..),
        mkCustomActionNavigationOperationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.LocalNavigationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data CustomActionNavigationOperationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-customactionnavigationoperation.html>
    CustomActionNavigationOperationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-customactionnavigationoperation.html#cfn-quicksight-template-customactionnavigationoperation-localnavigationconfiguration>
                                             localNavigationConfiguration :: (Prelude.Maybe LocalNavigationConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomActionNavigationOperationProperty ::
  CustomActionNavigationOperationProperty
mkCustomActionNavigationOperationProperty
  = CustomActionNavigationOperationProperty
      {haddock_workaround_ = (),
       localNavigationConfiguration = Prelude.Nothing}
instance ToResourceProperties CustomActionNavigationOperationProperty where
  toResourceProperties CustomActionNavigationOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.CustomActionNavigationOperation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LocalNavigationConfiguration"
                              Prelude.<$> localNavigationConfiguration])}
instance JSON.ToJSON CustomActionNavigationOperationProperty where
  toJSON CustomActionNavigationOperationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LocalNavigationConfiguration"
                 Prelude.<$> localNavigationConfiguration]))
instance Property "LocalNavigationConfiguration" CustomActionNavigationOperationProperty where
  type PropertyType "LocalNavigationConfiguration" CustomActionNavigationOperationProperty = LocalNavigationConfigurationProperty
  set newValue CustomActionNavigationOperationProperty {..}
    = CustomActionNavigationOperationProperty
        {localNavigationConfiguration = Prelude.pure newValue, ..}