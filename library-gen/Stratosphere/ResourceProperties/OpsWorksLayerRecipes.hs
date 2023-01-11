
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html

module Stratosphere.ResourceProperties.OpsWorksLayerRecipes where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for OpsWorksLayerRecipes. See
-- 'opsWorksLayerRecipes' for a more convenient constructor.
data OpsWorksLayerRecipes =
  OpsWorksLayerRecipes
  { _opsWorksLayerRecipesConfigure :: Maybe (ValList Text)
  , _opsWorksLayerRecipesDeploy :: Maybe (ValList Text)
  , _opsWorksLayerRecipesSetup :: Maybe (ValList Text)
  , _opsWorksLayerRecipesShutdown :: Maybe (ValList Text)
  , _opsWorksLayerRecipesUndeploy :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON OpsWorksLayerRecipes where
  toJSON OpsWorksLayerRecipes{..} =
    object $
    catMaybes
    [ fmap (("Configure",) . toJSON) _opsWorksLayerRecipesConfigure
    , fmap (("Deploy",) . toJSON) _opsWorksLayerRecipesDeploy
    , fmap (("Setup",) . toJSON) _opsWorksLayerRecipesSetup
    , fmap (("Shutdown",) . toJSON) _opsWorksLayerRecipesShutdown
    , fmap (("Undeploy",) . toJSON) _opsWorksLayerRecipesUndeploy
    ]

-- | Constructor for 'OpsWorksLayerRecipes' containing required fields as
-- arguments.
opsWorksLayerRecipes
  :: OpsWorksLayerRecipes
opsWorksLayerRecipes  =
  OpsWorksLayerRecipes
  { _opsWorksLayerRecipesConfigure = Nothing
  , _opsWorksLayerRecipesDeploy = Nothing
  , _opsWorksLayerRecipesSetup = Nothing
  , _opsWorksLayerRecipesShutdown = Nothing
  , _opsWorksLayerRecipesUndeploy = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-configure
owlrConfigure :: Lens' OpsWorksLayerRecipes (Maybe (ValList Text))
owlrConfigure = lens _opsWorksLayerRecipesConfigure (\s a -> s { _opsWorksLayerRecipesConfigure = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-deploy
owlrDeploy :: Lens' OpsWorksLayerRecipes (Maybe (ValList Text))
owlrDeploy = lens _opsWorksLayerRecipesDeploy (\s a -> s { _opsWorksLayerRecipesDeploy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-setup
owlrSetup :: Lens' OpsWorksLayerRecipes (Maybe (ValList Text))
owlrSetup = lens _opsWorksLayerRecipesSetup (\s a -> s { _opsWorksLayerRecipesSetup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-shutdown
owlrShutdown :: Lens' OpsWorksLayerRecipes (Maybe (ValList Text))
owlrShutdown = lens _opsWorksLayerRecipesShutdown (\s a -> s { _opsWorksLayerRecipesShutdown = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-undeploy
owlrUndeploy :: Lens' OpsWorksLayerRecipes (Maybe (ValList Text))
owlrUndeploy = lens _opsWorksLayerRecipesUndeploy (\s a -> s { _opsWorksLayerRecipesUndeploy = a })
