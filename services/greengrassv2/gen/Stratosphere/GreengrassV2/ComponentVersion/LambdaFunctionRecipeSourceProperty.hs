module Stratosphere.GreengrassV2.ComponentVersion.LambdaFunctionRecipeSourceProperty (
        module Exports, LambdaFunctionRecipeSourceProperty(..),
        mkLambdaFunctionRecipeSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GreengrassV2.ComponentVersion.ComponentDependencyRequirementProperty as Exports
import {-# SOURCE #-} Stratosphere.GreengrassV2.ComponentVersion.ComponentPlatformProperty as Exports
import {-# SOURCE #-} Stratosphere.GreengrassV2.ComponentVersion.LambdaExecutionParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaFunctionRecipeSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-lambdafunctionrecipesource.html>
    LambdaFunctionRecipeSourceProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-lambdafunctionrecipesource.html#cfn-greengrassv2-componentversion-lambdafunctionrecipesource-componentdependencies>
                                        componentDependencies :: (Prelude.Maybe (Prelude.Map Prelude.Text ComponentDependencyRequirementProperty)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-lambdafunctionrecipesource.html#cfn-greengrassv2-componentversion-lambdafunctionrecipesource-componentlambdaparameters>
                                        componentLambdaParameters :: (Prelude.Maybe LambdaExecutionParametersProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-lambdafunctionrecipesource.html#cfn-greengrassv2-componentversion-lambdafunctionrecipesource-componentname>
                                        componentName :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-lambdafunctionrecipesource.html#cfn-greengrassv2-componentversion-lambdafunctionrecipesource-componentplatforms>
                                        componentPlatforms :: (Prelude.Maybe [ComponentPlatformProperty]),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-lambdafunctionrecipesource.html#cfn-greengrassv2-componentversion-lambdafunctionrecipesource-componentversion>
                                        componentVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-lambdafunctionrecipesource.html#cfn-greengrassv2-componentversion-lambdafunctionrecipesource-lambdaarn>
                                        lambdaArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaFunctionRecipeSourceProperty ::
  LambdaFunctionRecipeSourceProperty
mkLambdaFunctionRecipeSourceProperty
  = LambdaFunctionRecipeSourceProperty
      {haddock_workaround_ = (), componentDependencies = Prelude.Nothing,
       componentLambdaParameters = Prelude.Nothing,
       componentName = Prelude.Nothing,
       componentPlatforms = Prelude.Nothing,
       componentVersion = Prelude.Nothing, lambdaArn = Prelude.Nothing}
instance ToResourceProperties LambdaFunctionRecipeSourceProperty where
  toResourceProperties LambdaFunctionRecipeSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::ComponentVersion.LambdaFunctionRecipeSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComponentDependencies"
                              Prelude.<$> componentDependencies,
                            (JSON..=) "ComponentLambdaParameters"
                              Prelude.<$> componentLambdaParameters,
                            (JSON..=) "ComponentName" Prelude.<$> componentName,
                            (JSON..=) "ComponentPlatforms" Prelude.<$> componentPlatforms,
                            (JSON..=) "ComponentVersion" Prelude.<$> componentVersion,
                            (JSON..=) "LambdaArn" Prelude.<$> lambdaArn])}
instance JSON.ToJSON LambdaFunctionRecipeSourceProperty where
  toJSON LambdaFunctionRecipeSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComponentDependencies"
                 Prelude.<$> componentDependencies,
               (JSON..=) "ComponentLambdaParameters"
                 Prelude.<$> componentLambdaParameters,
               (JSON..=) "ComponentName" Prelude.<$> componentName,
               (JSON..=) "ComponentPlatforms" Prelude.<$> componentPlatforms,
               (JSON..=) "ComponentVersion" Prelude.<$> componentVersion,
               (JSON..=) "LambdaArn" Prelude.<$> lambdaArn]))
instance Property "ComponentDependencies" LambdaFunctionRecipeSourceProperty where
  type PropertyType "ComponentDependencies" LambdaFunctionRecipeSourceProperty = Prelude.Map Prelude.Text ComponentDependencyRequirementProperty
  set newValue LambdaFunctionRecipeSourceProperty {..}
    = LambdaFunctionRecipeSourceProperty
        {componentDependencies = Prelude.pure newValue, ..}
instance Property "ComponentLambdaParameters" LambdaFunctionRecipeSourceProperty where
  type PropertyType "ComponentLambdaParameters" LambdaFunctionRecipeSourceProperty = LambdaExecutionParametersProperty
  set newValue LambdaFunctionRecipeSourceProperty {..}
    = LambdaFunctionRecipeSourceProperty
        {componentLambdaParameters = Prelude.pure newValue, ..}
instance Property "ComponentName" LambdaFunctionRecipeSourceProperty where
  type PropertyType "ComponentName" LambdaFunctionRecipeSourceProperty = Value Prelude.Text
  set newValue LambdaFunctionRecipeSourceProperty {..}
    = LambdaFunctionRecipeSourceProperty
        {componentName = Prelude.pure newValue, ..}
instance Property "ComponentPlatforms" LambdaFunctionRecipeSourceProperty where
  type PropertyType "ComponentPlatforms" LambdaFunctionRecipeSourceProperty = [ComponentPlatformProperty]
  set newValue LambdaFunctionRecipeSourceProperty {..}
    = LambdaFunctionRecipeSourceProperty
        {componentPlatforms = Prelude.pure newValue, ..}
instance Property "ComponentVersion" LambdaFunctionRecipeSourceProperty where
  type PropertyType "ComponentVersion" LambdaFunctionRecipeSourceProperty = Value Prelude.Text
  set newValue LambdaFunctionRecipeSourceProperty {..}
    = LambdaFunctionRecipeSourceProperty
        {componentVersion = Prelude.pure newValue, ..}
instance Property "LambdaArn" LambdaFunctionRecipeSourceProperty where
  type PropertyType "LambdaArn" LambdaFunctionRecipeSourceProperty = Value Prelude.Text
  set newValue LambdaFunctionRecipeSourceProperty {..}
    = LambdaFunctionRecipeSourceProperty
        {lambdaArn = Prelude.pure newValue, ..}